#include<iostream>

using namespace std;

extern "C" int GetValueFromGAS();

int main()
{
	cout<<"GAS said "<<GetValueFromGAS();
	return 0;
}
