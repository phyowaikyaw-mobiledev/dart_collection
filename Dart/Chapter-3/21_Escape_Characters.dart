void main() {
  // New line
  print("Hello\nWorld");

  // Tab
  print("Name:\tAndrew");

  // Single quote
  print('It\'s a beautiful day');

  // Double quote
  print("She said \"Hello\"");

  // Backslash
  print("Path: C:\\Users\\Documents");

  // Dollar sign
  print("Price: \$50");

  // Why use \$?
  // Without escape
  String name = "Andrew";
  print("Hello $name"); // $name set variable.

  // With escape
  print("Price: \$100"); // \$ is literal $

  // Alternative : Raw Strings

  // Use r prefix to ignore escape characters

  print(r"C:\Users\Documents"); // -> No need \\

  print(r"Price: $100"); // -> No need \$
}

/* 
    Escape characters in Dart.
    -Special characters that start with backslash \
    -Used to insert special characters in strings

    Common Escape Characters
    Escape                      Meaning                     Character
    \n                          New Line                    "Hello\nWorld"
    \t                          Tab                         "Name:\tAndrew"
    \'                          Single Quote                'It\'s Okay'
    \"                          Double Quote                "He said \"Hi\""
    \\                          Backslash                   "C:\\Users\\Name"
    \$                          Dollar Sign                 "\$100"


    Key Points
    \ + character = escape sequence
    \n = most common (new line)
    \' and \" = for quotes in strings
    \$ = when you want literal $ not variable
    Raw strings r"..." = ignore all escapes
*/
