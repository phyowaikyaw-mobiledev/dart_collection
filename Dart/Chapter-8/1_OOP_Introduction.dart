/*
  Four Main Features of OOP

  1.Inheritance -> Child class can reuse/inherit properties and methods from parent class.

     // Parent class
        class Animal {
          void eat() => print("Eating");
        }

        // Child class inherits from Animal
        class Dog extends Animal {
          void bark() => print("Barking");
        }

        // Dog can use both eat() and bark()

    Purpose: Code reusability

  2.Encapsulation -> Wrapping data and methods together in a single unit (class) and hiding internal details.

        class BankAccount {
        double _balance = 0;  // Private (hidden)
        
        void deposit(double amount) {
          _balance += amount;  // Controlled access
        }
        
        double getBalance() => _balance;
      }

    Purpose: Data protection & security

  3.Abstraction ->  Hiding complex implementation details and showing only essential features.

        abstract class Vehicle {
        void start();  // What to do
        // How to do is hidden 
        }

        class Car extends Vehicle {
          void start() => print("Car engine starts");
        }

    Purpose: Simplicity

  4. Polymorphism -> Same name, different behavior. One interface, multiple implementations.

      class Animal {
      void sound() => print("Some sound");
    }

      class Dog extends Animal {
        void sound() => print("Bark");  // Different behavior
      }

      class Cat extends Animal {
        void sound() => print("Meow");  // Different behavior
      }

      // Same method name, different output

    Purpose: Flexibility

    Inheritance = Reuse 
    Encapsulation = Protect 
    Abstraction = Simplify 
    Polymorphism = Flexible
*/
