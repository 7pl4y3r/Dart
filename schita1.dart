/*
 * Se schimba putin structura testului!!!
 * 1. In interiorul clasei nu vom mai avea o functie care verifica daca 
 * un numar intreg (int) respecta o conditie
 * in schimb veti avea de facut o sortare in functia main
 * sortarea se face in functie de un parametru si in mod crescator sau descrescator
*/

 void main() {

 	// Declararea si instantierea unui obiect de tip List<Obj> numit myList
 	List<Obj> myList = new List();

 	// Ce valoare vreti voi
 	int n = 10;

 	// Adaugarea elementelor in lista. Obj este clasa pe care o faceti inainte de main!
 	for (int i = 0; i < n; i++) {
 		myList.add(new Obj('nume $i'))
 	}

 	/* Sortarea
 	 * cautati un algoritm. Noi am facut bubble sort, dar se poate folosi si altul daca chiar vreti
 	 * atunci imi spuneti cum se numeste
 	 * https://www.geeksforgeeks.org/bubble-sort/

 	*/ afisarea elementelor listei

 }

 /*
  * Structura finala!
  *
  * 1. In clasa:
  * 1.1 are doi parametrii fiecare avand cate un setter si cate un getter -> 2p
  * 1.2 un constructor -> 1p
  * 1.3 o functie care afiseaza parametrii -> 1p
  * total = 4p
  *
  * 2. In main()
  * 2.1 crearea si instantierea unui obiect de tip List<NumeleClasei> -> 1p
  * 2.2 adaugarea unor elemente in lista -> 1p
  * 2.3 sortarea -> 2p
  * 2.4 afisarea listei folosind functia de afisare a parametrilor din clasa -> 1p
  * total = 5p
  *
  * oficiu = 1p
  *
 */