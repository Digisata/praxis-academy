Penjelasan singkat program:

1. List
List pada dart sama dengan array pada java, cara pendeklarasiannya tidak jauh beda dengan javascript yaitu dengan memberikan tipe list nya kemudian nama nya dan yang terakhir nilai dari list itu sendiri.

contoh:
var numbers = [6, 7, 8, 9]; // list literals 
var numbers1 = []; // empty list 
var numbers2 = [7, 3, 2, ...numbers]; // spread operator
var numbers3 = [12, 22, 89, ...?numbers]; // null aware spread operator
var numbers4 = [4, 6, 18, if (numbers1.length == 0) 100]; // collection if 
var numbers5 = [8, 5, 3, for (int i = 10; i <= 20; i++) i]; // collection for

pada list terdapat beberapa properties yang sangat membantu, di antaranya yaitu:
- first: digunakan untuk me retrieve / mendapatkan value yang ada di index ke 0 pada sebuah list.
print(numbers.first); // output 6
- isEmpty: berfungsi untuk mengecek apakah list tersebut kosong atau tidak. 
print(numbers.isEmpty); // output false
- length: sesuai namanya, property ini digunakan untuk mendapatkan ukuran dari sebuah list.
print(numbers.length); // output 4
- reversed: sebuah property yang berfungsi untuk membalikkan urutan suatu list.
print(numbers.reversed); // output (9, 8, 7, 6)

2. Sets 
Sets adalah sebuah collection dari item-item yang bersifat unique, pada sets kita bisa memiliki item yang sama persis tetapi sets tetap akan menganggapnya satu, jadi pada sets tidak ada yang namanya duplikasi. Oleh sebab itu sets di sebut sebagai collection yang bersifat unique.

contoh:
var pets = {'cat', 'fish', 'bird', 'turtle', 'cat'}; // sets literals
var pets2 = <String>{}; // an empty set of type string
Set<String> pets3 = {'snake', 'monkey', 'panda'}; // menggunakan explisit type dalam pendeklarasiannya
var pets4 = {
  'cobra',
  'anaconda',
  'phyton',
  if (pets2.length == 0) 'king cobra' // collection if
};
var pets5 = {'gorila', 'girafe', 'crocodile', for (String i in pets4) i}; // collection for

pada sets ada beberapa method yang sering digunakan, di antaranya:
- add(): digunakan untuk menambahkan value pada sebuah set dan meletakkannya di urutan terakhir.
pets.add('hamster'); // output {cat, fish, bird, turtle, hamster}
  
- addAll(): berguna untuk menambahkan beberapa value sekaligus dalam satu waktu kedalam suatu set.
pets.addAll(pets3); // {cat, fish, bird, turtle, hamster, snake, monkey, panda}

3. Maps
Maps adalah sebuah collection yang berupa pasangan key dan value, yang harus diingat disini adalah, key ini bersifat unique yang artinya tidak boleh ada key yang sama dalam satu maps, tetapi untuk value nya bisa sama.

contoh:
var students = {1: 'Nopal', 2: 'Hanif', 3: 'Khair'}; // menggunakan type inference untuk menentukan tipe datanya
Map<String, int> scores = {'Nopal': 98, 'Hanif': 76, 'Khair': 88}; // secara explisit dalam menentukan tipe datannya
var nim = {54: 'Husni'};
nim[32] = 'Nopal'; // menambahkan item baru kedalam maps nim
nim[30] = 'Hanif';
nim[22] = 'Khair';

sama seperti list dan sets, didalam maps juga memiliki properties dan method yang sangat membantu kita, beberapa contoh propertiesnya adalah:
- keys: digunakan untuk mendapatkan key dari sebuah maps
print(students.keys); // output (1, 2, 3)
- values: kebalikan dari keys, values digunakan untuk mendapatkan value dari sebuah maps
print(scores.values); // output (98, 76, 88)

sedangkan untuk contoh methods nya yaitu:
- clear(): Digunakan untuk menghapus seluruh isi dari sebuah maps
nim.clear(); // output {}
- forEach(): digunakan untuk melakukan sebuah aksi dari masing2 pasangan key dan value
nim.forEach((k, v) => print('The key is: $k and its value is: $v'));
/* output
The key is: 54 and its value is: Husni
The key is: 32 and its value is: Nopal
The key is: 30 and its value is: Hanif
The key is: 22 and its value is: Khair */

4. Generics
Generics digunakan untuk membuat sebuah tipe class menjadi sangat dinamis dan dapat di implementasikan berulang-ulang kali.

contoh:
// generic in dart
StudentId nopal = StudentId<int>(21);
StudentId hanif = StudentId<String>('32');
StudentId khair = StudentId<double>(32.8);

print('My student id is: $nopal.studentId');
print('My student id is: $hanif.studentId');
print('My student id is: $khair.studentId');

// generic class
class StudentId<T> {
  T studentId;

  StudentId(this.studentId);
}

/* output
My student id is: 21
My student id is: 32
My student id is: 32.8 */


