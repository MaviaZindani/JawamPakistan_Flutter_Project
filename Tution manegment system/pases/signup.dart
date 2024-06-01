import 'dart:io';
import '../data/data.dart';

void signUser(int? value) {
  do {
    if (value == 1) {
      signupUser(listDataAdmin);
    } else if (value == 2) {
      signupUser(listDataTecher);
    } else if (value == 3) {
      signupUser(listDataStudent);
    } else if (value == 4) {
      break;
    }
  } while (value == 4);
}

signupUser(List listname) {

    stdout.write('Enter a new id: ');
    int newId = int.parse(stdin.readLineSync() ?? 'Invalid value');
    stdout.write('Enter a new name: ');
    var newName = stdin.readLineSync();
    for (var category in listname) {
      print('Welcome $newName');
      var id = category['id'];
      if (id != newId) {
        var addInList = {'id': '$newId', 'name': '$newName'};
        listname.add(addInList);
        print('Welcome $newName');
        print('you are login');
        break;
      }
    }

}
