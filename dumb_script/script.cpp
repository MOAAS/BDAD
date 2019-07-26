#include <fstream>
#include <vector>
#include <string>
#include <iostream>
#include <iomanip>
#include <time.h>

using namespace std;

vector<string> femaleNames;
vector<string> maleNames;
vector<string> lastNames;

void getFemaleNames()
{
    ifstream file("female.txt");
    if(!file.is_open())
    {
        perror("\nfemale.txt failed to open!\n");
        exit(1);
    }

    string line = "";
    while(getline(file, line)){
        femaleNames.push_back(line);
    }
}

string getFemaleName() {
    return femaleNames[rand() % femaleNames.size()];
}

void getMaleNames()
{
    ifstream file("male.txt");
    if(!file.is_open())
    {
        perror("\nmale.txt failed to open!\n");
        exit(1);
    }

    string line = "";
    while(getline(file, line)){
        maleNames.push_back(line);
    }
}

string getMaleName() {
    return maleNames[rand() % maleNames.size()];
}

void getLastNames()
{
    ifstream file("lastNames.txt");
    if(!file.is_open())
    {
        perror("\nlastNames.txt failed to open!\n");
        exit(1);
    }

    string line = "";
    while(getline(file, line)){
        lastNames.push_back(line);
    }
}

string getLastName() {
    return lastNames[rand() % lastNames.size()];
}

int main() {
    ofstream output("output.txt");
    srand(time(NULL));
    getMaleNames();
    getFemaleNames();
    getLastNames();
    for (unsigned int i = 80; i < 1000; i++) {
        output << "insert into Person values(";
        output << setw(3) << setfill('0') << i << ",";
        output << " \"" << rand() % 10 << rand() % 10 << rand() % 10 << "-" << rand() % 10 << rand() % 10 << "-" << rand() % 10 << rand() % 10 << rand() % 10 << rand() % 10 << "\"";
        if(rand() % 2) {
            output << ", \"" << getMaleName();
        } else {
            output << ", \"" << getFemaleName();
        }
        output << " " << getLastName() << "\", \"" << rand() % 30 + 1970 << "-" << setw(2) << setfill('0') << rand() % 12 + 1 << "-" << setw(2) << setfill('0') << rand() % 28 + 1 << "\", \"";
        output << "91" << rand() % 10 << rand() % 10 << rand() % 10 << rand() % 10 << rand() % 10 << rand() % 10 << rand() % 10 << "\", " << rand() % 24 << ");";
        output << endl;
    }
    return 0;
}