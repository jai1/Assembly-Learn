#include<iostream>

using namespace std;

extern "C" int AddInts(int a, int b, int c, int d);
extern "C" int MulBy17(int a);
extern "C" int Sub5x(int a, int b);

int main()
{
	int a, b, c, d;
	cout<<"Give us a numbers ";
	cin>>a>>b>>c>>d;
	cout<<" The Numbers are: "<<a<<" "<<b<<" "<<c<<" "<<d<<endl;
	cout<<" Sum is "<<AddInts(a, b ,c ,d)<<endl;
	cout<<" MulBy17 is "<<MulBy17(a)<<endl;
	cout<<" Sub5x is "<<Sub5x(a, b)<<endl;
	return 0;
}
