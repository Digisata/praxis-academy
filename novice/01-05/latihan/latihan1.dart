import 'dart:async';

import 'dart:math';

Future<void> main() async {
  // await make it possible to susspend execution from the next line until its finished the process
  var heyaa = await helloAwait();
  print('waiting...');
  // create an instannce of class
  var x = await hello();
  print('still waiting for the await execution done');
  // print the return value
  print(x);
  print('getting the student data');
  var nopal = await getStudent(32);
  print('Name: ${nopal.name}, NIM: ${nopal.nim}, Address: ${nopal.address}');
  print('Lets start countdown timer: ');
  var three = await threeCount();
  print(three);
  var two = await twoCount();
  print(two);
  var one = await oneCount();
  print(one);

  // future for each for iterating all of the elements and take an action
  await Future.forEach(
      [1, 2, 6, 78, 23, 54],
      (int i) => isEvenNumber(i)
          .then((x) => print('$i ${x ? 'is' : 'is\'t'} an even number!')));
  print('iteration is done');

  // future wait
  Future.wait([getRandomNumber(), getRandomNumber(), getRandomNumber()])
      .then((List<int> results) => findLargestNumber(results));

  // exception handling
  /* try {
    var result = divNumber(5, 0);
    print('the result is $result');
  } catch (e) {
    print('The error message is ${e.toString()}');
  } */
  await showScore().then((value) {
    print(value);
  }).catchError((err) => print(err));
  
  /* var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);

  Future<int>.delayed(const Duration(seconds: 3), () { return 100;}).
  then((value) {
    print(value);
  }); */

  // stream
  List<int> numbers = [1, 2, 5, 7, 2, 7, 4];
  Stream stream = testStream(numbers);
  stream.listen((value) => print(value));

  print('waiting for the result,....');
}

Stream<int> testStream(List<int> numbers) async* {
  for (int i in numbers) yield i;
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  try {
    await for (var i in stream) {
      sum += i;
    }
  } catch (e) {
    return -1;
  }
  return sum;
}

// stream example
Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    if (i == 4)
      throw Exception('An error occured');
    else
      yield 1;
  }
}

Future<String> showScore() async {
  var score = await getScore();
  return 'your score is $score';
  // throw Exception('An error happened');
}

Future<int> getScore() async =>
    Future.delayed(const Duration(seconds: 2), () => 80);

Future<double> divNumber(int a, int b) async {
  throw Exception('Uyeaah');
}

Future<int> getRandomNumber() async {
  var random = Random();
  return random.nextInt(20);
}

void findLargestNumber(List<int> numbers) {
  print('Print all numbers: ');
  numbers.forEach((i) => print(i));
  numbers.sort();
  numbers.forEach((i) => print(i));
  int largest = numbers.last;
  print('The largest number is $largest');
}

Future<bool> isEvenNumber(int number) async => await number % 2 == 0;

Future<String> threeCount() async {
  // create delay for 1 second
  await Future<String>.delayed(const Duration(seconds: 1));
  // return the value
  return 'Three...';
}

Future<String> twoCount() async {
  return await Future<String>.delayed(
      const Duration(seconds: 1), () => 'Two...');
}

Future<String> oneCount() async {
  await Future<String>.delayed(const Duration(seconds: 1));
  return 'one...';
}

class Student {
  // properties of class Student
  int nim;
  String name, address;

  // constructor of class Student
  Student(this.nim, this.name, this.address);
}

Future<Student> getStudent(int nim) async {
  await Future<Student>.delayed(const Duration(milliseconds: 2000));
  var student = Student(nim, 'Nopal', 'Jakal hm 5,7');
  return student;
}

Future<void> helloAwait() async => Future.delayed(
    const Duration(seconds: 2), () => print('Hello from helloAwait method'));

Future<String> hello() async {
  return 'hello from hello method';
}
