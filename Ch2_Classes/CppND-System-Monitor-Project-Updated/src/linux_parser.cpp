
#include "linux_parser.h"

#include <dirent.h>
#include <unistd.h>  // for sleep

#include <iostream>
#include <string>
#include <vector>

using std::stof;
using std::string;
using std::to_string;
using std::vector;

// DONE: An example of how to read data from the filesystem
string LinuxParser::OperatingSystem() {
  string line;
  string key;
  string value;
  std::ifstream filestream(kOSPath);
  if (filestream.is_open()) {
    while (std::getline(filestream, line)) {
      std::replace(line.begin(), line.end(), ' ', '_');
      std::replace(line.begin(), line.end(), '=', ' ');
      std::replace(line.begin(), line.end(), '"', ' ');
      std::istringstream linestream(line);
      while (linestream >> key >> value) {
        if (key == "PRETTY_NAME") {
          std::replace(value.begin(), value.end(), '_', ' ');
          return value;
        }
      }
    }
  }
  return value;
}

// DONE: An example of how to read data from the filesystem
string LinuxParser::Kernel() {
  string os, kernel, version;
  string line;
  std::ifstream stream(kProcDirectory + kVersionFilename);
  if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> os >> version >> kernel;
  }
  return kernel;
}

// BONUS: Update this to use std::filesystem
vector<int> LinuxParser::Pids() {
  vector<int> pids;
  DIR* directory = opendir(kProcDirectory.c_str());
  struct dirent* file;
  while ((file = readdir(directory)) != nullptr) {
    // Is this a directory?
    if (file->d_type == DT_DIR) {
      // Is every character of the name a digit?
      string filename(file->d_name);
      if (std::all_of(filename.begin(), filename.end(), isdigit)) {
        int pid = stoi(filename);
        pids.push_back(pid);
      }
    }
  }
  closedir(directory);
  return pids;
}

// TODO: Read and return the system memory utilization
float LinuxParser::MemoryUtilization() {
  string s, MemTotal, MemFree;
  float used;
  string line, key;
  std::ifstream stream(kProcDirectory + kMeminfoFilename);
  if (stream.is_open()) {
    while (std::getline(stream, line)) {
      // std::getline(stream, line);
      std::istringstream linestream(line);
      linestream >> key >> s;
      if (key == "MemTotal:") {
        MemTotal = s;
      }
      if (key == "MemFree:") {
        MemFree = s;
      }
    }
    used = (std::stof(MemTotal) - std::stof(MemFree)) / std::stof(MemTotal);
  }
  return used;
}

// TODO: Read and return the system uptime
long LinuxParser::UpTime() {
  string t;
  string line;
  std::ifstream stream(kProcDirectory + kUptimeFilename);
  if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> t;
  }
  return std::stol(t);
}

// TODO: Read and return the number of jiffies for the system
long LinuxParser::Jiffies() { return 0; }

// TODO: Read and return the number of active jiffies for a PID
// REMOVE: [[maybe_unused]] once you define the function
long LinuxParser::ActiveJiffies(int pid) {
  string line;
  string key;
  long value = 0;
  std::ifstream filestream(kProcDirectory + to_string(pid) + kStatFilename);
  if (filestream.is_open()) {
    std::getline(filestream, line);
    std::istringstream linestream(line);
    // get the 14th 15th 16th 17th values
    for (int i = 1; i <= 17 ; i++) {
      linestream >> key;
      if (i == 14|| i == 15 || i == 16 || i == 17)
        value += stol(key);
    }
  }
  return value;
}

// TODO: Read and return the number of active jiffies for the system
long LinuxParser::ActiveJiffies() { return 0; }

// TODO: Read and return the number of idle jiffies for the system
long LinuxParser::IdleJiffies() { return 0; }

// TODO: Read and return CPU utilization
float LinuxParser::CpuUtilization() {
  string user, nice, system, idle, iowait, irq, softirq, steal, guest,
      guest_nice;
  float PrevIdle, Idle, PrevTotal, Total;
  unsigned int microseconds = 1000000;  // 1 sec

  // read cpu values
  string s, line;
  std::ifstream stream(kProcDirectory + kStatFilename);
  if (stream.is_open()) {
    // std::cout<< "/proc/stat opened \n \n";
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> s >> user >> nice >> system >> idle >> iowait >> irq >>
        softirq >> steal >> guest >> guest_nice;
  }
  stream.close();

  PrevIdle = std::stof(idle) + std::stof(iowait);
  PrevTotal = PrevIdle + std::stof(user) + std::stof(nice) + std::stof(system) +
              std::stof(irq) + std::stof(softirq) + std::stof(steal) +
              std::stof(guest) + std::stof(guest_nice);

  // wait another readind 1 sec
  usleep(microseconds);

  // read again
  stream.open(kProcDirectory + kStatFilename);
  if (stream.is_open()) {
    // std::cout<< "/proc/stat opened again \n \n";
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> s >> user >> nice >> system >> idle >> iowait >> irq >>
        softirq >> steal >> guest >> guest_nice;
  }
  stream.close();

  Idle = std::stof(idle) + std::stof(iowait);
  Total = Idle + std::stof(user) + std::stof(nice) + std::stof(system) +
          std::stof(irq) + std::stof(softirq) + std::stof(steal) +
          std::stof(guest) + std::stof(guest_nice);

  return ((Total - PrevTotal) - (Idle - PrevIdle)) / (Total - PrevTotal);
  // return (PrevTotal - PrevIdle)/ PrevTotal;
}

// TODO: Read and return the total number of processes
int LinuxParser::TotalProcesses() {
  string np = "000";  // No of processes
  string line, key;
  std::ifstream stream(kProcDirectory + kStatFilename);
  if (stream.is_open()) {
    while (std::getline(stream, line)) {
      // std::getline(stream, line);
      std::istringstream linestream(line);
      linestream >> key >> np;
      // while (linestream >> key) {
      // std::cout<< "/proc/stat opened and got no. of processes \n \n";
      if (key == "processes") {
        linestream >> np;
        // std::cout<< "/proc/stat opened and got no. of processes \n \n";
        return std::stoi(np);
      }
    }
  }
  return std::stoi(np);
}

// TODO: Read and return the number of running processes
int LinuxParser::RunningProcesses() {
  string np = "000";  // No of processes
  string line, key;
  std::ifstream stream(kProcDirectory + kStatFilename);
  if (stream.is_open()) {
    while (std::getline(stream, line)) {
      // std::getline(stream, line);
      std::istringstream linestream(line);
      linestream >> key >> np;
      // while (linestream >> key) {
      // std::cout<< "/proc/stat opened and got no. of processes \n \n";
      if (key == "procs_running") {
        linestream >> np;
        // std::cout<< "/proc/stat opened and got no. of processes \n \n";
        return std::stoi(np);
      }
    }
  }
  return std::stoi(np);
}

// TODO: Read and return the command associated with a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::Command(int pid) {
  string cmd = "-1";
  string line;
  std::ifstream stream(kProcDirectory + std::to_string(pid) + kCmdlineFilename);
  if (stream.is_open()) {
    while (std::getline(stream, line)) {
      std::istringstream linestream(line);
      linestream >> cmd;
    }
    return cmd;
  }
  return cmd;
}

// TODO: Read and return the memory used by a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::Ram(int pid) {
  string Ram = "-1";
  string line, key;
  std::ifstream stream(kProcDirectory + std::to_string(pid) + kStatusFilename);
  if (stream.is_open()) {
    while (std::getline(stream, line)) {
      std::istringstream linestream(line);
      linestream >> key >> Ram;
      if (key == "VmSize:") {
        return std::to_string(std::stoi(Ram) / 1024);
      }
    }
  }
  return std::to_string(std::stoi(Ram) / 1024);
}

// TODO: Read and return the user ID associated with a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::Uid(int pid) {
  string Uid = "-1";
  string line, key;
  std::ifstream stream(kProcDirectory + std::to_string(pid) + kStatusFilename);
  if (stream.is_open()) {
    while (std::getline(stream, line)) {
      std::istringstream linestream(line);
      linestream >> key >> Uid;
      if (key == "Uid:") {
        return Uid;
      }
    }
  }
  return Uid;
}

// TODO: Read and return the user associated with a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::User(int pid) {
  string User = "-1";
  string Uid = LinuxParser::Uid(pid);
  string line, key, x;
  std::ifstream stream(kPasswordPath);
  if (stream.is_open()) {
    while (std::getline(stream, line)) {
      std::replace(line.begin(), line.end(), ':', ' ');
      std::istringstream linestream(line);
      linestream >> User >> x >> key;
      if (key == Uid) {
        return User;
      }
    }
  }
  return User;
}

// TODO: Read and return the uptime of a process
// REMOVE: [[maybe_unused]] once you define the function
long LinuxParser::UpTime(int pid) {
  string up_time = "-1";
  string line;
  std::ifstream stream(kProcDirectory + std::to_string(pid) + kStatFilename);
  if (stream.is_open()) {
    while (std::getline(stream, line)) {
      std::istringstream linestream(line);
      for (int i = 0; i < 22; i++) {
        linestream >> up_time;
        // if (i == 21) return (std::stol(up_time) / sysconf(_SC_CLK_TCK));
      }
    }
  }
  return (std::stol(up_time) / sysconf(_SC_CLK_TCK));
}