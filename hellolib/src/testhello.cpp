#include "../include/hellolib.h"

int main(int args, char** argv)
{
    // hellolib/print.cppで定義されている関数を呼び出す
	print("hello");

    // hellolib.cppで定義されている関数を呼び出す
	hellolib("This message is used by library");	

	return 0;
}
