#include "../include/hellolib.h"
#include "../include/notinclude.h"

#include <iostream>
#include <cstdio>
#include <math.h>

using namespace std;

int printHello(){
	cout << "helloworld" << endl;
	return 0;
}

int hellolib(string input){
	cout << input << endl;
	cout << printHello() << endl;
	cout << "use math.h: log(10)=" << log(10) << endl;
	return 0;
}


