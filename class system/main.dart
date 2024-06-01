void main() {
  // vehicle tacher1 = vehicle(make: 'Mavia Zindani', color: 'red', modil: '2050', name: 'Maaz');
  // print(tacher1);
}

// class vehicle {
//   String make = '';
//   String color = '';
//   String modil = '';
//   String name = '';

//   vehicle(
//       {required this.make,
//       required this.color,
//       required this.modil,
//       required this.name});
// }

class Human {
  String name = '';
  String age = '';


  Human({this.name, this.age});
  canwalk() {}
  canEat() {}
  canSleep() {}
}

class Men extends Human {
  canDrive() {
    print('$name is Derive');
  }

  canJob() {}
}

class WoMen {
  canCook() {}
}
