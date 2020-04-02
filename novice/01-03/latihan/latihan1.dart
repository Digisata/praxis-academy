main(List<String> whatever) {
  // create an instance of class
  Mouse mouse = Mouse('rat', 'white', 2);
  Mouse babyMouse = Mouse.newBaby();
  Mouse2 youngMouse = Mouse2.young('rat', 'born');
  Mouse2 oldMouse = Mouse2.old('mice', 'red');
  DataPlacer<int> dataPlacer = DataPlacer(98);

  print(
      'Mouse type: ${mouse.type}, color: ${mouse.color}, and age ${mouse.age}');
  print(
      'Mouse type: ${babyMouse.type}, color: ${babyMouse.color}, and age ${babyMouse.age}');
  print(
      'Mouse type: ${youngMouse.type}, color: ${youngMouse.color}, and age ${youngMouse.age}');
  print(
      'Mouse type: ${oldMouse.type}, color: ${oldMouse.color}, and age ${oldMouse.age}');
  youngMouse.makeSound();
  mouse.getType;
  print(mouse.run);
  print(dataPlacer.getData());
}

enum Doing { SLEEPING, SOUNDING, DIGGING, RUNNING }

// abstract class
abstract class AbstrackMouse {
  void makeSound();

  void run();
}

// create a class
class Mouse extends AbstrackMouse {
  String type, color;
  int age, privateVariable;

  // constructor
  Mouse(this.type, this.color, this.age);
  // named constructor
  Mouse.newBaby() {
    type = 'mice';
    color = 'red';
    age = 3;
  }

  void get getType {
    return print('My type is $type');
  }

  set setType(String type) {
    this.type = type;
  }

  // a method or function
  @override
  makeSound() {
    print('cit cit ciit');
  }

  @override
  void run() => print('catch me human, i know you cant');

  _privateMethod() {
    print('Find me if u can');
  }
}

// create a class that inherite from parent class
class Mouse2 extends Mouse {
  Mouse2(String type, String color, int age) : super(type, color, age);

  Mouse2.young(String type, String color) : this(type, color, 2);
  Mouse2.old(String type, String color) : this(type, color, 3);

  // override the method from parent class
  @override
  makeSound() {
    print('ckiit ckit ckit');
  }
}

// generic class
class DataPlacer<T> {
  T data;

  DataPlacer(this.data);

  getData() {
    return data;
  }

  setData(data) {
    this.data = data;
  }
}
