class Animal {
  makeSound() {
    print("Making Sound");
  }
}

class Dog extends Animal {
  @override
  makeSound() {
    print("Bark Bark Bark");
  }
}

class Cat extends Animal {
  @override
  makeSound() {
    print("Meow Meow Meow");
  }
}

void main() {
  Animal dog = new Dog();
  Animal cat = new Cat();
  dog.makeSound();
  cat.makeSound();
}
