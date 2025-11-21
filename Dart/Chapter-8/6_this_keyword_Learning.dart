class AA {
  String name =
      "Mg Mg"; // ← Instance variable (class level) => Belongs to the object

  output() {
    String name =
        "Aung Aung"; // ← Local variable (method level) => Belongs to output() method only
    print("Name is ${this.name}"); // Uses "this" to access class variable
  }
}

void main() {
  var a = new AA();
  a.output();
}

/*
  Key Concept: this Keyword

  print("Name is ${this.name}");

  - **`this.name`** = Refers to **class-level** variable (`"Mg Mg"`)
  - **`name`** (without `this`) = Refers to **local** variable (`"Aung Aung"`)

---

  **Output:**
    Name is Mg Mg

  -> Why "Mg Mg" and not "Aung Aung"?
  -> Because the code uses ${this.name}, which explicitly accesses the class-level variable.

*/

/*
  class AA {
  String name = "Mg Mg";  // ← CLASS LEVEL (accessible everywhere in class)
  
  output() {
  String name = "Aung Aung";  // ← LOCAL LEVEL (only in this method)
    
  print(this.name);  // Output: Mg Mg (class level)
  print(name);       // Output: Aung Aung (local level)
  }
  }
  ---

  **Memory Visual:**
  ```
  Object 'a' in memory:
  ┌─────────────────┐
  │  AA Object      │
  │  - name: "Mg Mg"│ ← Class variable
  └─────────────────┘

  When output() runs:
  ┌────────────────────────┐
  │ output() method scope  │
  │ - name: "Aung Aung"    │ ← Local variable (temporary)
  └────────────────────────┘

  -> 2 variables with same name in different scopes
  -> this.name = Class-level variable
  -> name = Local variable (closer/priority)
  -> Local variable shadows (hides) class variable

  ** Key Rule: When local and class variables have the same name, use this. to access the class variable. **

*/
