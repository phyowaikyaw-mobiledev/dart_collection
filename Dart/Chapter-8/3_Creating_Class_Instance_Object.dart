class Main {
  var name = "Mg Mg";
  void doIt() {
    print("I am doIt method from Main class");
  }
}

class House {
  // Blueprint
  var color = "White";
}

void main() {
  // Creating objects from Main class blueprint
  var m = new Main(); // Object 1 in memory
  print(m.name);
  m.doIt();

  print(new Main().name); // Object 2 in memory (temporary)
  new Main().doIt(); // Object 3 in memory (temporary)

  var house1 = new House(); // Build house 1
  var house2 = new House(); // Build house 2

  house1.color = "Red"; // Paint house 1 red
  house2.color = "Blue"; // Paint house 2 blue

  // house1 and house2 are DIFFERENT objects in memory
}

/*
  -> if you want to call and use class members (properties & methods) inside of the Class -> At main function main(),
  => create class's instance object

  -> Class is a template/blueprint. Objects are actual instances created from that blueprint.

  What Happens in Memory:

  1. var m = new Main();
  
     var m = new Main();
  
  - **Creates 1 object** in memory
  - **Stores reference** in variable `m`
  - Object **stays in memory** until not needed
  - Can use multiple times: `m.name`, `m.doIt()`

    **Memory:**

    m => [Main Object 1]
          - name: "Mg Mg"
          - doIt()

  2. new Main().name

     print(new Main().name);

  - **Creates 1 object** in memory
  - **No reference stored** (temporary)
  - Used once, then **garbage collected** (deleted)

    **Memory:**

    [Main Object 2] => Used once, then deleted
    - name: "Mg Mg"

  3. new Main().doIt()

    new Main().doIt();

  - **Creates 1 object** in memory
  - **No reference stored** (temporary)
  - Used once, then **garbage collected**

    **Memory:**

    [Main Object 3] => Used once, then deleted
    - doIt()

  Key Point -> 
  1.Class = Blueprint/Template (not taking memory for objects)
  2.new Main() = Creates new object in memory
  3.Stored object (var m) = Reusable, stays in memory
  4.Temporary object (new Main().name) = Used once, deleted immediately
  

*/
