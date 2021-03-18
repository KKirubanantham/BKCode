#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

bool findpalindrome(string str)
{
	//To avoid checking for case sensitive all the charecters are coverted to upper charecter  
	transform(str.begin(), str.end(), str.begin(), ::toupper);

	string first = str;				//Collecting the initial string value
	reverse(str.begin(), str.end());	//Reversing the string
	int rslt = str.compare(first);			//compare the reversed string to intial value - return value : 0=Same
	return rslt == 0 ? true : false;
}

int main()
{
	string str = "Test";
	while (true) {
		cout << "\nOPTIONS:-\n";
		cout << "1. Enter the text to check for Palindrom.\n";
		cout << "2. Enter \"exit\" to exit the application.\n\n";
		getline(cin, str);
		if (str=="exit") {
			cout << "Application Exiting..." << endl;
			break;
		} else {
			if (findpalindrome(str)) {
				cout << str << " : is palindrome" << endl;
			}
			else {
				cout << str << " : is not palindrome" << endl;
			}
		}
	}
	return 0;
}