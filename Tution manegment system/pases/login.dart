import 'dart:io';
import '../data/data.dart';

void loginUser(int? value) {
  do {
    if (value == 1) {
      chackId(listDataAdmin);
    } else if (value == 2) {
      chackId(listDataTecher);
    } else if (value == 3) {
      chackId(listDataStudent);
    } else if (value == 4) {
      break;
    }
  } while (value == 4);
}

chackId(List listName) {
  String chack ;
  if (listName.isNotEmpty) {
    print('');
    stdout.write('Enter your id: ');
    String? idvalue = stdin.readLineSync();
    print('');
    for (var category in listName) {
      var id = category['id'];
      var name = category['name'];
      if (idvalue == id) {
        print('Welcome $name');
        print('you are login');
        break; // Exit the loop once logged in
      }
    }
  } else {
    print('');
    print("First u need to sign up sir/maam");
  }
}
