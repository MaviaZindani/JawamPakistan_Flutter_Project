import 'dart:io';
import 'pases/login.dart';
import 'pases/signup.dart';
// import 'pases/signup.dart';

void main() {
  int sign;
  do {
    print('');
    print('Enter 1 for login');
    print('Enter 2 for signup');
    print('Enter 3 for exit');
    print('');
    stdout.write('Enter a number: ');
    sign = int.parse(stdin.readLineSync() ?? 'Invalid value');

    if (sign == 1) {
      print('');
      print('login as a admin: 1');
      print('login as a techer: 2');
      print('login as a student: 3');
      print('exit: 4');
      print('');
      stdout.write('Enter a number: ');
      int log = int.parse(stdin.readLineSync() ?? "Invalid value");
      loginUser(log);
    } else if (sign == 2) {
      print('');
      print('signup as a admin: 1');
      print('signup as a techer: 2');
      print('signup as a student: 3');
      print('exit: 4');
      print('');
      stdout.write('Enter a number: ');
      int sign = int.parse(stdin.readLineSync()!);
      signUser(sign);
    }
  } while (sign != 3);
}
