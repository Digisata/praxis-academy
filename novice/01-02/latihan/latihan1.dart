import 'dart:io';

/*
  created by nopal on tue mar 3, 11:47
*/

// where the program start
main() {
  // const and final
  const phi = 3.14;
  final currentTime = DateTime.now();

  // variables
  int r = 10, height = 50;
  var result = countArea(phi, r);
  bool isTrue = true;
  bool isFalse = false;

  // rune
  var smileFace = '\u{1F60A}';
  var value = null;

  print('today is $currentTime be happy guys $smileFace');
  print('The area of clirlce  is $result');

  // instance of class
  Avanza avanza = Avanza(4, 4, 500, 'red', 'pertamax');
  avanza.describe();
  avanza.speedUp();
  avanza.breaking();
  avanza.horn();

  // tenary
  print(result < 2000 ? 'the result is lowe than 2000': 'the result is higher than 2000');

  // print even number from 1 to 10
  loop:
  for(int i = 1; i <= 10; ++i) {
    if(i %2 != 0) continue loop;
    else print(i);
  }

  // while loop
  while(height != 70) height++;
  
  print(height);
  
  // do while loop
  do{
    height += 1;
  }while(height != 80);

  print(height);

  //exception handling
  try{
    print(100/value);
  }catch (e) {
    print('the divisor can\'t be null');
  }
  
  print('Enter a number: ');
  int evenNo = int.parse(stdin.readLineSync());

  // assert
  assert(evenNo % 2 == 0, 'you entered odd number');
  
  print(17~/5);

  if(isTrue && isFalse) print('the result is true');
  else if(isTrue || isFalse) print('The result is either false or true');
  else print('the result is false');
}

double countArea(double phi, int r) => phi * r * r;

abstract class Car {
  void speedUp();
  void horn();
  void describe();
}

class Avanza extends Car with Breaker{
  int _tires, _doors, _maxSpeed;
  var _color, _oil;

  Avanza(this._tires, this._doors, this._maxSpeed, this._color, this._oil);  

  @override
  void describe() {
    print('The avanza with color of $_color has $_tires tires, $_doors doors, $_maxSpeed max speed\nand its oil is $_oil');
  }

  @override
  void horn() {
    print('Beep beep beeeeep');
  }

  @override
  void speedUp() {
    switch(_maxSpeed) {
      case 200: {
        print('too slow');
        break;
      }
      case 350: {
        print('fast');
        break;
      }
      case 500: {
        print('so fast');
        break;
      }
    }
  }
}

class Breaker {
  void breaking() {
    print('the car is breaking');
  }
}