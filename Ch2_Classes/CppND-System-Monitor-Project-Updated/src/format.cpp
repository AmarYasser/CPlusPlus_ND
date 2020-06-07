#include "format.h"

#include <string>
#include <iomanip>

using std::string;

// TODO: Complete this helper function
// INPUT: Long int measuring seconds
// OUTPUT: HH:MM:SS
// REMOVE: [[maybe_unused]] once you define the function
string Format::ElapsedTime(long seconds) {
  int HH, MM, SS;
  HH = seconds / 3600;
  seconds = seconds % 3600;
  MM = seconds / 60;
  // seconds = seconds % 60;
  if (seconds < 60)
  	SS = seconds;
  else
  {
	  SS = seconds - HH*3600 - MM*60 ;
  }
  
  std::stringstream formatted_Time;
  formatted_Time << std::setw(2) << std::setfill('0') << HH << ":"
                   << std::setw(2) << std::setfill('0') << MM << ":"
                   << std::setw(2) << std::setfill('0') << SS ;

  string time = formatted_Time.str();

  return time;
  // return std::to_string(HH) + ":" + std::to_string(MM) +":"+
  // std::to_string(SS);
}
