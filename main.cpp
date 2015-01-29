#include <fstream>

// Define some maps here!
float logistic(float x, float lambda) {
	return lambda*x*(1-x);
}

float fold(float y, float a) {
	return a - y*y;
}

// This just iterates a given map i times
float iterate(float (*map)(float, float), float x, float a, int i) {
	float newx = map(x, a);
	if ( i ) return iterate(map, newx, a, i-1);
	else return x;
}

int main() {
	std::ofstream outFile;
	outFile.open("map.dat");
	
	for ( float lambda = 1; lambda < 4; lambda += 0.01 ) {
		outFile <<  lambda << '\t';
		for ( float x = 0.001; x < 1; x += 0.01 ) {
			// Set up right now for 3 iterations of the logistic map
			outFile << iterate(logistic, x, lambda, 3) << '\t';
		}
		outFile << '\n';
	}
	outFile.close();
	return 0;
}

