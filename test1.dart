/* 
 * Primul test pentru capitolul OOP (object orientated programming) 
 * este un test destul de simplu care imi va arata cat de atenti ati fost 
 * sau cat de mult ati dat la pacanele
*/

 /*
  * O sa va pun la dispozitie un fisier imaginar numit utils.dart
  * in acest fisier exista doua functii care citesc date
  * una citeste un int una un String
  * ambele returneaza valoarea citita si o sa vedeti cum vreau sa faceti citirea in functia main()
 */

  /* 
   * acel fisier trebuie importat. Daca nu il importam nu vom putea sa folosim functiile sale
   * import este folosit in majoritatea limbajelor si este echivalentul lui #include din C/C++ si C#
   * si este putin mai flexibil
  */
  import 'utils.dart';

  /* 
   * Vreau sa faceti o clasa numita Elev cu doi parametri
   * unul sa fie numele elevului (de tip String)
   * celalalt sa fie codul sau (de tip int)
  */

   class Elev {

   		// Propietatile. In mod normal se pune _ pentru a le face private
   		String nume;
   		int cod;

   		/* 
		 * Constructorul clasei. 
		 * Are numele pe care il are si clasa si se executa cand se creeaza instanta
   		*/

   		Elev(String nume, int cod) {
   			this.nume = nume;
   			this.cod = cod;
   		}

   		// setters() -> schimba valoarea unei propietati
   		void setNume(String nume) {
   			this.nume = nume;
   		}

   		void setCod(int cod) {
   			this.cod = cod;
   		}

   		// getters() -> returneaza valoarea unei propietati care nu se poate accesa direct
   		String getNume() {
   			return nume;
   		}

   		int getCod() {
   			return cod;
   		}

   		/*
   		 * o functie care verifica daca o conditie este respectata de catre obiect
   		 * conditia este ca codul sa aiba doar cifre pare
   		 * am ales algoritmul de cifre ale numarului. (o sa-l aveti! sunt sigur)
   		 * o sa va spun la test ce sa scrieti in loc de n / 10 (nu-s sigur)
   		*/

   		 /*
   		  * Cum procedam?
   		  * 1. Trebuie sa parcurgem cifrele numarului de la cifra unitatilor la cea mai mare
   		  * 2. Verificam daca o cifra este para sau nu. Daca nu-i para functia returneaza false
   		  * ?. Daca nu s-au gasit cifre impare functia returneaza la sfarsit true
   		 */

   		 bool respectaConditia() {

   		 	// Avem nevoie de aceste int-uri
   		 	int n = cod;
   		 	int c;

   		 	// Pentru n = 321 parcurgem cifrele lui n de la 1 la 3 cat timp n != 0
   		 	while (n != 0) {

   		 		// c = ultima cifra a numarului n
   		 		c = n % 10;

   		 		// Taiem o cifra. Daca n = 321 noul n este 32
   		 		n = n / 10; // sau n /= 10;

   		 		/* 
   		 		 * Verificam daca c este impar
				 * Daca-i impar se returneaza false
				*/

				 if (c % 2 != 0)
				 	return false;

   		 	}

   		 	return true;
   		 }

   }

   void main() {

   		// Vreau sa creati o lista cu elemente de tip Elev folosind clasa List

  		// Ce-i inainte de egal este declararea, iar ce este dupa se numeste instantiere
   		List<Elev> numeleListei = new List();

   		// puneti 10 elemente in lista. Aici vom folosi fisierul utils.dart
   		// utils.dart este un fisier imaginar!
   		for (int i = 0; i < 10; i++) {

   			// cele 2 functii returneaza ceea ce vrem
   			String nume = readString();
   			int cod = readInt();

   			Elev elev = new Elev(nume, cod);
   			numeleListei.add(elev);

   		}

   		// Parcurgem lista si daca codul unui elev nu-i bun ii schimbam numele in "nimeni"

   		// se poate folosi si '' dar "" este mult mai folosit in general(nu ma refer doar la Dart) 
   		String nimeni = "nimeni";

   		for (int i = 0; i < numeleListei.length; i++) {

   			if (!numeleListei[i].respectaConditia())
   				numeleListei[i].setNume(nimeni);

   		}

   		// afisarea elementelor listei
   		for (int i = 0; i < numeleListei.length; i++) {

   			print(numeleListei[i].getNume());
   			print(numeleListei[i].getCod());

   		}
   		
   }
