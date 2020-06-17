#include <iostream>
#include <thread>
#include <string>

void printName(std::string &name)
{
    name += " (from Thread)";
    std::cout << name << std::endl;
}

int main()
{
    std::string name("MyThread");

    // starting thread
    std::thread t1(printName, std::ref(name));
    std::thread t2(printName, std::ref(name));

    // wait for thread before returning
    t1.join();
    t2.join();

    // print name from main
    name += " (from Main)";
    std::cout << name << std::endl;

    return 0;
}