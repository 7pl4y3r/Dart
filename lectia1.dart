
/*
* In prima lectia invatam: 
* 1. Cum se creaza o clasa care contine 2 propietati (numele si varsta), un constructor, getters si setters pentru propietati.
* 2. Cum se creaza un obiect nou si cum sa il folosim
* 
*/

class Persoana {

	// I. Propietati

	/* 1. Propietatile se marcheaza cu _ pentru a le declara private. In DartPad nu functioneaza cum trebuie.
	 * Asta inseamna ca ele pot fi accesate doar in interiorul clasei.
	 * 2. Dupa tipul propietatii (de exemplu int) SE PUNE SPATIU!!! Le fel si dupa return
	*/	
	
	String _nume;
	int _varsta;

	
	// II. Constructorul
	
	/*
	 * 1. Atunci cand creem un obiect aceasta functie se executa.
	 * 2. De obicei ea initializeaza propietatile, dar poate apela si alte functii din clasa respectiva sau chiar din altele.
	 * 3. Putem sa avem mai multi constructori, dar trebuie numiti altfel. (Nu vom invata deocamdata)
	*/
	
	Persoana(String nume, int varsta) {
	
		_nume = nume;
		_varsta = varsta;

	}

	// III. Getters

	/* 1. Sunt functii care returneaza valoarea propietatilor care nu se pot accesa direct deoarece sunt private.
	 * 2. Functii publice la fel ca un constructor doar ca se apeleaza cu ajutorul unui obiect. Nu automat ca un constructor.
	 * 3. Se pune get la inceput.
	*/	

	String getNume() {
		return _nume;
	}

	int getVarsta() {
		return _varsta;
	}

	// IV. Setters

	/* 1. Functii care seteaza valoarea unei propietati
	 * 2. Sunt publice si se apeleaza asa cum se apeleaza si un Getter.
	*/

	void setNume(String numeNou) {
		_nume = numeNou;
	}

	void setVarsta(int varstaNoua) {
		_varsta = varstaNoua;
	}

} 


void main() {

	//Declararea unui obiect. Inca nu se poate folosi! Se face asa cum am facut cu un int
	Persoana x;

	//Instantierea. Asa se creaza un obiect nou cu anumite propietati. Dupa asta se poate folosi!
	x = new Persoana('Popa Alex', 17);

	//Declararea si instantierea se pot uni asa:
	Persoana y = new Persoana('Ceva Ana', 10);

	afisPersoana(x);
	afisPersoana(y);

}

void afisPersoana(Persoana pers) {

	print(pers.getNume());
	print(pers.getVarsta());

}

