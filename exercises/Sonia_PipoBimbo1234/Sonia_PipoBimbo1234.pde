/*
------------------------------------------------------
                    ¯\_(``)_/¯
Pour le moment nous programmons en Java sur Processing
------------------------------------------------------
*/
void setup() {
  println("------------------------Exercise 1------------------------");
  replacement(20);
  println("------------------------Exercise 2------------------------");
  replacementNumber(20, 6, 7);
  println("------------------------Exercise 3------------------------");
  replacementNumber(20);
  println("------------------------Exercise 4------------------------");
  replacementNumberWord(20, 10, 4);
  println("----------------------------------------------------------");
  replacementNumberWord(20, 7, 9, "Net", "Design" );
}

//Exercice 1 : écrire une fonction qui fait le remplacement en partant de 1 jusqu'à x, x étant l'argument que l'on passe à la fonction.
void replacement(int x) {
  int suite =0;
  while (suite<x) {
    suite++;
    if (suite%3==0 && suite%5!=0) {
      print("pipo");
    } else if (suite%5==0 && suite%3!=0) {
      print("bimbo");
    } else if (suite%3==0 && suite%5==0) {
      print("pipo bimbo");
    } else {
      print (suite);
    }
    if (suite!=x) {
      print (", ");
    }
  }
  println(" !");
}

//Exercice 2 : modifier la fonction pour que l'on puisse définir en plus les deux chiffres à remplacer
void replacementNumber(int x, int remplaceChiffre1, int remplaceChiffre2) {
  int suite =0;
  while (suite<x) {
    suite++;
    if (suite%remplaceChiffre1==0 && suite%remplaceChiffre2!=0) {
      print("pipo");
    } else if (suite%remplaceChiffre2 == 0 && suite%remplaceChiffre1 != 0) {
      print("bimbo");
    } else if (suite%remplaceChiffre1 == 0 && suite%remplaceChiffre2 == 0) {
      print("pipo bimbo");
    } else {
      print (suite);
    }
    if (suite != x) {
      print (", ");
    }
  }
  println(" !");
  println("VOUS AVEZ DEMANDER QUE :");
  println("-Les multiples de " +remplaceChiffre1+ " soit remplacés par 'pipo'.");
  println("-Les multiples de "+remplaceChiffre2+" soit remplacés par 'bimbo'.");
  println("-Les multiples de " +remplaceChiffre1 + " et de " +remplaceChiffre2 + " soit remplacés par 'pipo bimbo'.");
}

//Exercice 3 : modifier la fonction de l'exo 2 pour que si l'on ne précise pas les 2 chiffres, on prend par défaut 3 et 5
void replacementNumber(int x) {
  println("==MODE PAR DEFAUT==");
  println("Vous n'avez pas précisez quels chiffres doivent être remplacé, nous prenons alors par defaut, les chiffres 3 et 5 :");
  replacementNumber(x, 3, 5);
}

//Exercice 4 : modifier la fonction 3 pour que l'on puisse préciser les mots de remplacement. Si ceux-ci ne sont pas spécifiés, on prend par défaut nos amis pipo et bimbo.
void replacementNumberWord(int x, int remplaceChiffre1, int remplaceChiffre2) {
  println("==MODE PAR DEFAUT==");
  println("Vous n'avez pas précisez quels mots doivent être utilsés, nous prenons alors par defaut, les mots pipo et bimbo :");
  replacementNumberWord(x, remplaceChiffre1, remplaceChiffre2, "pipo", "bimbo");
}

void replacementNumberWord(int x, int remplaceChiffre1, int remplaceChiffre2, String remplaceMot1, String remplaceMot2) {
  int suite =0;
  while (suite<x) {
    suite++;
    if (suite%remplaceChiffre1==0 && suite%remplaceChiffre2!=0) {
      print(remplaceMot1);
    } else if (suite%remplaceChiffre2==0 && suite%remplaceChiffre1!=0) {
      print(remplaceMot2);
    } else if (suite%remplaceChiffre1==0 && suite%remplaceChiffre2==0) {
      print(remplaceMot1+" "+ remplaceMot2);
    } else {
      print (suite);
    }
    if (suite!=x) {
      print (", ");
    }
  }
  println(" !");
  println("VOUS AVEZ DEMANDER QUE :");
  println("-Les multiples de " +remplaceChiffre1+ " soit remplacés par "+ remplaceMot1+".");
  println("-Les multiples de "+remplaceChiffre2+" soit remplacés par "+ remplaceMot2+".");
  println("-Les multiples de " +remplaceChiffre1 + " et de " +remplaceChiffre2 + " soit remplacés par "+ remplaceMot1+" "+ remplaceMot2+".");
}
