#include <iostream>

int main () {
	std::cout << "Input Two Numbs to add " << std::endl;
	int v1, v2;
	std::cin >> v1 >> v2;
	int v3, v4;
	if (v1 > v2) {
		v4 = v1;
		v3 = v2;
	} else {
		v4 = v2;
		v3 = v1;
	}
	int sum;
	while (v3 <= v4) {
		sum += v3;
		v3++;
	}
	std::cout << "The sum of " << v1 << " to " << v2 << " insulsive is " << sum << std::endl;
	return 0;
}
