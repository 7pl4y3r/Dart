class Algoritm {

	void interschimbare(int a, int b) {

		print(a);
		print(b);

		int c = a;
		a = b;
		b = c;	

		print(a);
		print(b);

	}

	int oglindit(int n) {
	
	int c, o = 0;
	while (n != 0) {

	c = n % 10;
	o = o * 10 + c;	
	
	} 

	return o;

	}

	bool palindrom(int n) {

	if (oglindit(n) == n)
		return true;
	
	return false;

	}

	bool prim(int n) {

	if (n < 2)
		return false;

	for (int d = 2; d <= n / 2; d++)
		if (n % d == 0)
			return false;

	return true;
}

	bool perfect(int n) {

	int s = 1;
	if (n == 1)
		return false;

	for (int d = 2; d <= n / 2; d++)
		if (n % d == 0)
			s += d;

	if (s == n)
		return true;

	return false;

	}

	int cmmdc(int a, int b) {
	
		if (a * b != 0) {
			while (a != b) {

				if (a > b)
					a -= b;
				else
					b -= a;				

			}
		
		}	

		return a;
	}

}

void main() {

	// Chiar daca nu am scris un constructor noi avem un constructor gol
	Algoritm X = new Algoritm();

	X.interschimbare();
	print(X.oglindit(8486));
	// ... alte apelari
}