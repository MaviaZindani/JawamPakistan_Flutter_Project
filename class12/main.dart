void main() {
  Dog xyz = Dog('38', 'loin');
  xyz.spoke();
}

class Animal {
  String name;
  Animal(this.name);
}

class Dog extends Animal {
  String age;
  Dog(this.age, super.name);
  void spoke() {
    print('Animal $name age $age');
  }
}
