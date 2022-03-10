#include <iostream>
#include <thread>

using namespace std;

int main(int argc, char** argv) 
{
    int counter = 0;
    while(true)
    {
        cout << "This is cycle " << ++counter << endl;
        std::this_thread::sleep_for(std::chrono::seconds(2));
    }
}