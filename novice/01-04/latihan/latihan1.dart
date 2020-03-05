main() {
  // list in dart
  var numbers = [6, 7, 8, 9];
  var numbers1 = [];
  var numbers2 = [7, 3, 2, ...numbers]; // spread operator
  var numbers3 = [12, 22, 89, ...?numbers]; // null aware spread operator
  var numbers4 = [4, 6, 18, if (numbers1.length == 0) 100];
  var numbers5 = [8, 5, 3, for (int i = 10; i <= 20; i++) i];

  print(numbers);
  numbers[0] = 16;
  print(numbers.length);
  numbers.add(3); // add value to the list
  numbers.addAll([5, 4, 15]); // add multiple value to the list
  print(numbers);
  print(numbers2);
  print(numbers2.first);
  print(numbers3);
  print(numbers3.last);
  print(numbers4);
  print(numbers5);
  print(numbers5.removeAt(3));
  print(numbers5.removeLast());
  print(numbers5);
  numbers5.removeRange(0, 5);
  print(numbers5.isEmpty);
  print(numbers5.reversed);

  // set in dart
  var pets = {'cat', 'fish', 'bird', 'turtle', 'cat'};
  var pets2 = <String>{}; // an empty set of type string
  Set<String> pets3 = {'snake', 'monkey', 'panda'};
  var pets4 = {
    'cobra',
    'anaconda',
    'phyton',
    if (pets2.length == 0) 'king cobra'
  };
  var pets5 = {'gorila', 'girafe', 'crocodile', for (String i in pets4) i};

  print(pets);
  pets.add('hamster');
  pets.addAll(pets3);
  print(pets);
  print(pets.length);
  print(pets4);
  print(pets5);

  // maps in dart
  var students = {1: 'Nopal', 2: 'Hanif', 3: 'Khair'};
  Map<String, int> scores = {'Nopal': 98, 'Hanif': 76, 'Khair': 88};
  var nim = {54: 'Husni'};
  nim[32] = 'Nopal';
  nim[30] = 'Hanif';
  nim[22] = 'Khair';

  print(students);
  print(students.keys);
  print(students[1]);
  print(scores);
  print(scores.values);
  print(scores['Nopal'] == 96);
  print(nim);
  print(nim.length);
  nim.forEach((k, v) => print('The key is: $k and its value is: $v'));
  nim.clear();
  print(nim);

  // generic in dart
  StudentId nopal = StudentId<int>(21);
  StudentId hanif = StudentId<String>('32');
  StudentId khair = StudentId<double>(32.8);

  print('My student id is: ${nopal.studentId}');
  print('My student id is: ${hanif.studentId}');
  print('My student id is: ${khair.studentId}');
}

// generic class
class StudentId<T> {
  T studentId;

  StudentId(this.studentId);

  T getStudentId() {
    return studentId;
  }
}
