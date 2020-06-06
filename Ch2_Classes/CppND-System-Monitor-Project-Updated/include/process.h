#ifndef PROCESS_H
#define PROCESS_H

#include <string>
/*
Basic class for Process representation
It contains relevant attributes as shown below
*/
class Process {
 public:
  // Define the constructor
  Process(int i) : pid(i){};
  int Pid();                               // TODO: See src/process.cpp
  std::string User();                      // TODO: See src/process.cpp
  std::string Command();                   // TODO: See src/process.cpp
  float CpuUtilization();                  // TODO: See src/process.cpp
  std::string Ram();                       // TODO: See src/process.cpp
  long int UpTime();                       // TODO: See src/process.cpp
  bool operator<(Process const& a) const;  // TODO: See src/process.cpp
  void setCpuUtil();
  
  // TODO: Declare any necessary private members
 private:
  int pid;
  //   std::string uid;
  //   std::string cmd;
  float cpuUtil= 0.0;
  //   std::string ram;
  //   long int up_time;
};

#endif