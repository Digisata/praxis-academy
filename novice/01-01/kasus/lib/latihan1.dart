/*
  Created by Naufal on Mon, Mar 2
  follow me on: bla blaa
 */
main() {
  final currentTime = DateTime.now();
  var love = '\u2665';
  var wkwk = '\u{1f600}';
  var name = 'Naufal';
  String name1 = 'Hanif';
  var _yob = 1998;
  int yob = 2000;
  var tall = 1.7;
  double tall1 = 2.7;
  var myPets = ['Cat', 'fish', 'bird'];
  List myPlants = ['apple', 'mango', 'carrot'];
  var image = {
    'tags': ['mountain'],
    'url': 'data:image/jpeg;base64,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'
  };

  if (yob < 2000)
    print('19st century');
  else if (yob > 2000)
    print('21st century');
  else
    print('dunno what');

  for (var object in myPets)
    print(object);

  for (int i = 1; i <= 11; i++)
    print(i);

  while (_yob < 2000) {
    _yob += 1;
  }
  print(_yob);

  int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  var result = fibonacci(10);

  print(result);

//  dont forget to delete this line

  print(
      'my name is $name $name1 and i was born in $_yob.\n i\'am $tall of height');
  print(myPets);
  print('hello dart!!');

  var cat1 = Cat('oyen', 'orange', 2, true);
  var cat2 = Cat('belang', 'black and white', 1, false);
  var cat3 = Kitten('bony', 'grey', 2, false);
  var cat4 = Kitten2('belang', 'black and white', 1, false);
  var cat5 = Kitten4();
  var cat6 = Kitten5();

  cat1.meow();
  cat2.furColor;
  cat2.eat();
  cat3.meow();
  cat3.age;
  cat4.isHungry;
  cat5.jump();
  cat5.lick();
  cat5.run();
  cat6.countLeg();
  print(love);
  print(wkwk);
  print(name.codeUnitAt(1));
  print(name.codeUnits);
  print(currentTime);
  sayHello();
  print('End of program');
}

void sayHello() {
  print('This is a function');
}

// classes
class Cat {
  String name, furColor;
  int age;
  bool isHungry;

  Cat(this.name, this.furColor, this.age, this.isHungry);

  void meow() {
    print('meow $name. meow meow $furColor mom meaw mom $age');
  }

  void eat() {
    if(isHungry) print('Eating some meals');
    else print('i\'am still full');
  }

}

// inheritance
class Kitten extends Cat with Leg{
  Kitten(String name, String furColor, int age, bool isHungry): super(name, furColor, age, isHungry);

  @override
  void eat() {
    if(isHungry) print('kitten is hungry mom');
    else print('kitten wont eat');
  }

  @override
  void meow() {
    print('meong $name. meong meong $furColor meong waau weeew $age');
  }

}

// mixins
class Leg {
  int legs = 4;
  void describeCat() {
    print('Cat has $legs legs');
  }
}

//interface and abstract classes
class Kitten2 implements Cat {
  Kitten2(String name, String furColor, int age, bool isHungry);
  @override
  int age;

  @override
  String furColor;

  @override
  bool isHungry;

  @override
  String name;

  @override
  void eat() {
    if(isHungry) print('Meong is hungry');
    else print('meaong dont want to eat');
  }

  @override
  void meow() {
    print('meong $name. meong meong $furColor meong waau weeew $age');
  }

}

abstract class Kitten3 {
  void run();
  void jump();
  void lick();
}

class Kitten4 implements Kitten3 {
  @override
  void jump() {
    print('meoow is jumping right now');
  }

  @override
  void lick() {
    print('meow is going to take a shower');
  }

  // asyn
  @override
  void run() {
    const fiveSeconds = Duration(seconds: 5);

    Future<void> printWithDelay(String message) async {
      await Future.delayed(fiveSeconds);
      print('meow is trying to catch a mouse');
    }
  }
}

class Kitten5 implements Cat {
  @override
  int age;

  @override
  String furColor;

  @override
  bool isHungry;

  @override
  String name;

  @override
  void eat() {
    print('nom nom noom');
  }

  @override
  void meow() {
    print('meow is meowing');
  }

  void countLeg() {
    try{
      var result = 4/null;
      print(result);
    } catch (e) {
      print('mewo doen\'t have legs :(');
    } finally {
      print('Akhir dari exception handling');
    }
  }

}


