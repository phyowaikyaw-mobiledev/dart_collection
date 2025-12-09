class New {
  // ============ NON-STATIC VARIABLES ============
  // These belong to each individual object/instance
  // Each time you create a new object, a new copy of these variables is created in memory
  // They are stored in the HEAP memory
  String name =
      "Mg Mg"; // instance variable, fields, member variable, properties

  // ============ STATIC VARIABLES ============
  // These belong to the CLASS itself, not to any individual object
  // Only ONE copy exists for the entire class, shared by all objects
  // They are stored in the STACK memory
  // Memory is allocated when the program starts, not when objects are created
  static int age = 23; // class variable - same value for all objects

  // ============ NON-STATIC METHOD ============
  // This method belongs to each object
  // You need to create an object to call this method
  // Can access both non-static and static members
  outPut() {
    print("Non-static variable");
  }

  // ============ STATIC METHOD ============
  // This method belongs to the CLASS, not to any individual object
  // You can call it without creating an object using: New.answer()
  // IMPORTANT RULE: Static methods can ONLY access static members, NOT non-static members
  static answer() {
    print("Static variable");

    // print("Static variable $name");
    // ERROR! This will NOT work because:
    // - 'name' is a non-static variable (belongs to objects)
    // - Static methods can only access static members
    // - Static method doesn't know which object's 'name' to access
  }

  // ============ NON-STATIC GETTER ============
  // Getters are special methods that look like properties
  // This getter belongs to each object (non-static)
  // IMPORTANT RULE: Non-static can access static members
  // This getter accesses the static variable 'age'
  int get getAge {
    // This works fine because:
    // - Non-static members CAN access static members
    // - The static 'age' variable is shared by all objects
    return age;
  }

  // Another non-static getter - same as above
  int get getAge2 {
    return age;
  }

  // ============ EXTRA EXAMPLES ============

  // Static getter - can only access static members
  static int get staticGetAge {
    return age; // OK - accessing static from static
    // return name; // ERROR - cannot access non-static 'name' from static getter
  }

  // Non-static method that accesses both static and non-static
  void printInfo() {
    print(
      "Name (non-static): $name",
    ); // OK - accessing non-static from non-static
    print("Age (static): $age"); // OK - non-static can access static
  }
}

void main() {
  // ============ CREATING OBJECTS ============
  print("===== Creating Objects =====");

  // Creating first object
  // A new 'name' variable is created in heap memory for this object
  var n1 = New();
  print("n1.name: ${n1.name}"); // Output: Mg Mg
  print(
    "n1.getAge: ${n1.getAge}",
  ); // Output: 23 (accessing static via non-static getter)

  // Creating second object
  // A new separate 'name' variable is created in heap memory for this object
  var n2 = New();
  n2.name = "Aung Aung"; // Change n2's name
  print("\nn2.name: ${n2.name}"); // Output: Aung Aung
  print("n2.getAge: ${n2.getAge}"); // Output: 23

  // Notice: n1.name is still "Mg Mg", not affected by n2's change
  print("\nn1.name (still): ${n1.name}"); // Output: Mg Mg (unchanged)

  // ============ ACCESSING STATIC MEMBERS ============
  print("\n===== Accessing Static Members =====");

  // Static members can be accessed in TWO ways:

  // Way 1: Through the CLASS name (recommended way)
  print("New.age (via class): ${New.age}"); // Output: 23
  New.answer(); // Output: Static variable
  print("New.staticGetAge: ${New.staticGetAge}"); // Output: 23

  // Way 2: Through an object (works but not recommended for static members)
  //print("n1.age (via object): ${n1.age}"); // Output: 23 (same as New.age)

  // ============ CALLING NON-STATIC METHODS ============
  print("\n===== Calling Non-Static Methods =====");

  // Non-static methods MUST be called through an object
  n1.outPut(); // Output: Non-static variable
  n2.outPut(); // Output: Non-static variable
  n1.printInfo(); // Output: Name: Mg Mg, Age: 23

  // ============ MODIFYING STATIC VARIABLE ============
  print("\n===== Modifying Static Variable =====");

  // Change the static age variable
  New.age = 30;

  // Now all objects will see the new age value
  print("After changing New.age to 30:");
  print("n1.getAge: ${n1.getAge}"); // Output: 30
  print("n2.getAge: ${n2.getAge}"); // Output: 30
  print("New.age: ${New.age}"); // Output: 30

  // ============ KEY TAKEAWAYS ============
  // 1. Non-static members = belongs to each object (separate copies in memory)
  // 2. Static members = belongs to class (ONE copy shared by all objects)
  // 3. Static can ONLY access static members
  // 4. Non-static can access BOTH static and non-static members
  // 5. Static members use CLASS name to access: New.age
  // 6. Non-static members use object name to access: n1.name
}
