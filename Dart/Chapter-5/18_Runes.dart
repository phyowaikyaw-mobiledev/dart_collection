void main() {
  /*
         a  b  c  d => String
        77 88 99 100 => Runes
    */
  var letter = "abcd";
  print(letter.codeUnits); // with Array list
  print(letter.codeUnitAt(0)); // with index number
  print(letter.toUpperCase().codeUnits); // Uppercase codeunit
  print(letter.runes); // Text to Unicode Value or Character to Runes

  print("Ka Gyi Unicode is \u{1000}");
  print(
    "Kha Kway Unicode is \u{1001}",
  ); // Unicode Value to Text or Runes to Character
}
/*
    1.Strings are a sequence of character.
    2.Dart represents strings as a sequence of Unicode UTF-16 code units.
    3.Unicode is a format that defines a unique numeric value for each letter, digit, and symbol.
    4.Since a Dart string is a sequence of Unicode UTF-16 code units, 32-bit Unicode values within a string are
      represented using a special syntax.
    5.A rune is an integer representing a Unicode code point.
    6.String code units / runes can be accessed in three ways
     - Using String.codeUnitAt() function
     - Using String.codeUnits property
     - Using String.runes property

*/