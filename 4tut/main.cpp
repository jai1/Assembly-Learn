#include<iostream>

using namespace std;

extern "C" int AddInts(int a, int b, int c, int d);
extern "C" int MulBy17(int a);
extern "C" int Sub5x(int a, int b);
extern "C" int Negate(int a);
extern "C" int ReverseBits(int a); // Reverse lower 8 bits i.e 00010011 becomes 11001000

int main()
{
	int a, b, c, d;
	cout<<"Give us a numbers ";
	cin>>a>>b>>c>>d;
	cout<<" The Numbers are: "<<a<<" "<<b<<" "<<c<<" "<<d<<endl;
	cout<<" Sum is "<<AddInts(a, b ,c ,d)<<endl;
	cout<<" MulBy17 is "<<MulBy17(a)<<endl;
	cout<<" Sub5x is "<<Sub5x(a, b)<<endl;
	cout<<" Negate is "<<Negate(a)<<endl;
	cout<<" ReverseBits is "<<ReverseBits(a)<<endl;
	return 0;
}
