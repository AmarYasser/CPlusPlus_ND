#include "process.h"

#include <unistd.h>

#include <cctype>
#include <sstream>
#include <string>
#include <vector>

#include "linux_parser.h"

using std::string;
using std::to_string;
using std::vector;

// TODO: Return this process's ID
int Process::Pid() { return pid; }

// TODO: Return this process's CPU utilization
float Process::CpuUtilization() {
  float up_time_process = LinuxParser::UpTime(Pid());
  float up_time_cpu = LinuxParser::UpTime();
  float totalTime = LinuxParser::ActiveJiffies(Pid());

  cpuUtil =
      ((totalTime / sysconf(_SC_CLK_TCK) / (up_time_cpu - up_time_process)));
  return cpuUtil;
}

// Cpu Utilization setter function
void Process::setCpuUtil() { cpuUtil = CpuUtilization(); }

// TODO: Return the command that generated this process
string Process::Command() { return LinuxParser::Command(Pid()); }

// TODO: Return this process's memory utilization
string Process::Ram() { return LinuxParser::Ram(Pid()); }

// TODO: Return the user (name) that generated this process
string Process::User() { return LinuxParser::User(Pid()); }

// TODO: Return the age of this process (in seconds)
long int Process::UpTime() { return LinuxParser::UpTime(Pid()); }

// TODO: Overload the "less than" comparison operator for Process objects
// REMOVE: [[maybe_unused]] once you define the function
bool Process::operator<(Process const& a) const {
  return (Process::cpuUtil < a.cpuUtil);
}