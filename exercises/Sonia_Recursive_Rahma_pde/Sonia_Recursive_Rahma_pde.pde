/*
------------------------------------------------------
                    ¯\_(``)_/¯
Pour le moment nous programmons en Java sur Processing
------------------------------------------------------
*/
/*Fonctions récursive (proposé par Rahma) : 
écrire une fonction qui détermine à partir d'un mot donné
si celui-ci est un palindrome.*/

import java.text.Normalizer;
String monMot="NetDesign";
String monMot2="Élu par cette crapule";

void setup() {
  palindrome(monMot);
  palindrome(monMot2);
}

void palindrome(String aTester) {
  if (isPalindrome(aTester)==true) {
    println ( "Le mot '"+aTester+"' est un palindrome.");
  } else {
    println ( "Le mot '"+aTester+"' n'est pas un palindrome.");
  }
}

boolean isPalindrome(String aTester) {
  return isPalindrome (aTester, 0);
}

boolean isPalindrome(String aTester, int position) {
  aTester= Normalizer.normalize(aTester, Normalizer.Form.NFD);
  aTester = aTester.replaceAll("[\\p{InCombiningDiacriticalMarks}]", "");
  aTester = aTester.replaceAll("\\s+", "");
  aTester = aTester.toLowerCase();
  if (aTester.charAt(position)!= aTester.charAt(aTester.length()-1-position)) {
    return false;
  } else {
    position++;
    if (position<=(aTester.length())/2) {
      return isPalindrome(aTester, position);     
    }
  }
  return true;
}
