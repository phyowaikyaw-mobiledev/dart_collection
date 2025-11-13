void main() {
  // Multi-line Text
  var poem = '''
  Roses are red
  Violets are blue
  Dart is great
  And so are you
  ''';

  print(poem);

  // No Escape Needed

  // Regular string (need escape)
  var path1 = "C:\\Users\\Documents\\file.txt";

  // Triple quote (no escape needed)
  var path2 = '''C:\Users\Documents\file.txt''';

  print(path1);
  print(path2);

  // Quotes Inside
  var message = '''
    He said "Hello"
    She replied 'Hi there'
    It's wonderful!
    ''';

  print(message);

  // With String Interpolation (Add Variable)

  String name = "Andrew";
  int age = 23;

  var info =
      '''
  Name :$name
  Age : $age
  Status : Active 
  ''';

  print(info);

  var email = """
  Dear Customer,
  
  Your order has been confirmed.
  Total: \$100
  
  Thank you!
  """;

  print(email);
}

/*
    Triple Quote String :
    -Strings enclosed with three quotes (''' or """)
    -Can span multiple lines
    -No need for escape characters

    Key Points
    Use ''' or """ (triple quote)
    Multi-line without \n 
    No escape characters needed 
    Perfect for JSON, HTML, SQL, long text
    Can use variables with $ 
*/
