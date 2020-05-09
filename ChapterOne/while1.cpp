#include <iostream>

int main() {
	int sum = 0, val = 100;
	while (val >= 50 ) {
		sum += val;
		val--;
	}
	std::cout<< "The sum 50 to 100 inclusive is " << sum << std::endl;
	return 0;
}
