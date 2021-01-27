public void setup()
{
  //String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(onlyLetters(noCapitals(lines[i])))==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String s = "";
  for (int i = 0; i < word.length(); i++)  {
    s += word.substring(word.length() - 1 - i, word.length() - i);
  }
  if (s.equals(word)) return true;
  else return false;
}
public String reverse(String str)
{
  String s = "";
  for (int i = 0; i < str.length(); i++) {
    s += str.substring(str.length() - 1 - i, str.length() - i);
  }
  return s;
}

public String onlyLetters(String sString){
  String ans = ""; 
  for (int i=0;i<sString.length();i++){
    if (Character.isLetter(sString.charAt(i))) {
      ans = ans+sString.substring(i,i+1);
    }
  }
  return ans;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
