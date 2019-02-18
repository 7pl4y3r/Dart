// Obiectul nostru:
class Copil {
  
  // Propietatile
  String nume;
  int varsta;
  double greutate;
  int inaltime;
  
  // Constructorul. Are aceasi denumire pe care o are clasa
  // Aici se fac initializarile pentru propietati
  Copil(String nume, int varsta, double greutate, int inaltime) {
    
    // this se foloseste pentru a accesa o propietate din clasa
    this.nume = nume;
    this.varsta = varsta;
    this.greutate = greutate;
    this.inaltime = inaltime;
    
  }
  
  // getters
 	String getNume() {
    return nume;
  }
  
  int getVarsta() {
    return varsta;
  }
  
  double getGreutate() {
    return greutate;
  }
  
  int getInaltime() {
    return inaltime;
  }
  
  void afisCopil() {
  	
    print(nume);
    print(varsta);
    print(greutate);
    print(inaltime);
    
	}
  
}

void afisLista(List<Copil> cresa) {
  
  for (int i = 0; i < cresa.length; i++) {
    print('');
    cresa[i].afisCopil(); 
  }
  
}

void main() {
  
  List<Copil> cresa = new List();
  cresa.add(new Copil('Mircea', 3, 20, 50));
  cresa.add(new Copil('Casian', 8, 70, 180));
  cresa.add(new Copil('Radu', 6, 8, 179));
  
  print('Lista initiala');
  afisLista(cresa);
  
  // Parcurgem lista si daca varsta > 5 stergem elementul (obiectul Copil) din lista
  for (int i = 0; i < cresa.length; i++) {
    if (cresa[i].getVarsta() > 5)
      cresa.removeAt(i);
  }
  
  print('lista dupa stergere');
  afisLista(cresa);
  
  for (int i = 0; i < cresa.length; i++) {
    
    if (cresa[i].getGreutate() > 12)
    		print('${cresa[i].getNume()} este gras');
  }
    
}
