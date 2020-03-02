Penjelasan singkat

1. Hello world
semua applikasi wajib memiliki main method atau main function, karena method inilah yang pertama kali dipanggil dan 
dijalankan oleh compiler atau dengan kata lain main method ini digunakan sebagai entry point sebuah program.

2. Variables
dart memiliki beberapa tipe variabel samahalnya dengan bahasa pemrograman lainnya, misalnya String, int, double, 
boolean (bool) array dan seterusnya. Tidak seperti bahasa pemrograman java, pada dart tidak mengenal tipe data float 
sebagai bilangan pecahan tapi hanya ada double, pada dart juga tidak ada char yang hanya ada string. Dart juga memiliki 
type inference sama seperti milik kotlin, dengan menggunakan kata kunci var kita tidak perlu repot-repot lagi menentukan 
tipe data untuk suatu variabel lg, semua itu ditentukan oleh compiler dengan acuan nilai yang diberikan kepada variabel 
tersebut.

contoh:
var name = 'Naufal'; // di kenali dengan tipe data string

NB: untuk mendeklarasikan sebuah variabel dengan tipe data string, kita bisa menggunakan single qupte '' atau bisa juga 
dengan double quote "" 

3. Control flow statement
if, else if, else, for, while dan sebagainya adalah beberapa contoh dari control flow, control flow ini bertugas untuk 
menentukan alur kerja dari program yang kita buat. 

contoh:
int yob = 2000; // year of birth atau tahun lahir
if (yob < 2000)
    print('19st century');
  else if (yob > 2000)
    print('21st century');
  else
    print('dunno what');
/*
    penjelasan singkat program, pertama2 kita cek apakah yob kurang dari 2000 ? jika ya maka compiler akan mencetak
    19st century, jika hasilnya false maka akan dicek lagi apakah yob lebih besar dari 2000 ? jika true maka akan 
    tercetak 21st century, namun jika false compiler akan mengeksekusi block else dan tercetaklah dunno what di layar.
    jika kita mencoba menjalankan program di atas, yang akan tercetak adalah dunno what, kenapa ? karena nilai dari yob
    adalah tepat 2000, tidak kurang dan tidak lebih.
*/

4. Function
function merupakan kode block yang akan dieksekusi jika dan hanya jika function tersebut dipanggil. function ini akan 
sangat membantu kita jika kita menggunakannya dengan baik dan benar. Kode kita akan terlihan lebih rapi dan ringkas jika
kita menggunakan function pada waktu dan tempat yang tepat.

contoh:
main() {
    String name = 'Naufal';
    sayHello(name);
}

void sayHello(String name) {
    print('Hello $name, how are you ?');
}

program tersebut akan mencetak Hello naufal, how are you ?

5. Comments
singkatnya comments adalah catatan yang digunakan sebagai pengingat atau penjelasan singkat yang dituliskan bersamaan 
dengan script program yang kita buat. Biasanya comments ini digunakan untuk menandai sebuah function, class, kondisi 
tertentu dan lain sebagainya. Untuk dapat menggunakan comments kita bisa menggunakan double slash // dan juga slash dan 
asterict /**/, bedanya apa ? bedanya adalah jika double slash itu untuk single line comment sedangkan slash asterict itu
untuk multiple line comment.

contoh:
// ini adalah satu baris commnet
print('ini juga merupakan'); // satu baris comment
/*
    naah kalau yang ini adalah
    multiple line comment, jadi
    kita bisa menuliskan comment
    hingga berbaris-baris.....
    
    
    akhir baris
*/

NB: Comment ini tidak akan dieksekusi oleh compiler, dia akan di abaikan oleh compiler pada saat program dijalankan, 
jadi jangan takut program kita menjadi error ketika kita menggunakan comment.

6. Imports
seperti namanya, import ini berfungsi untuk mengambil file-file dari luar project atau bisa juga dalam satu project.
biasanya digunakan untuk mengimport file-file dependencies dari suatu library.

7. Classes
class adalah sebuah blue print dari sebuah program, ini artinya apa ? artinya adalah class ini lah yang digunakan 
sebagai fondasi dari program kita, didalam class kita bisa mendeklarasikan dan menginisiasi variable, constructor, 
method dan lain-lain. 

contoh:
// classes
class Cat {
  String name, furColor; // ini adalah variable
  int age;
  bool isHungry;

  Cat(this.name, this.furColor, this.age, this.isHungry); // ini yang disebut dengan constructor

  void meow() {
    print('meow $name. meow meow $furColor mom meaw mom $age'); // nah kalau yang ini adalah method
  }

  void eat() {
    if(isHungry) print('Eating some meals');
    else print('i\'am still full');
  }

}

NB: Constructor adalah block program yang pertama kali di jalankan ketika sebuah instatnce dari suatu class di buat.

8. Mixins
mixins adalah cara kita untuk menggunakan kembali code di multiple class hierarchies, untuk menambahkan mixins pada 
suatu class kita menggunakan kata kunci with

contoh:
class Kitten extends Cat with Leg{ // kita tambahkan kata kunci with setelah nama class
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

9. Interfaces and abstract classes
tidak seperti pada pemrograman java yang menggunakan kata kunci interface untuk menandakan bahwa itu adalah sebuah 
interface, pada dart secara impisit interface ini sudah ada pada class, jadi kita bisa mengimplementasikan kelas 
apapun sebagai interface dengan menggunakan kata kunci implements. Abstact class adalah sebuah kelas yang masih samar,
samar artinya characteristic dan juga behavior nya masih belum terlihat jelas, jadi kita bisa menentukannya dengan cara
kita inherit ke abstract class tersebut. Dengan menggunakan kata kunci abstract sebeluh kata kunci class kita bisa 
mendeklarasikan sebuah abstract class.

contoh interface:
// classes
class Cat { // class cat juga sebagai interface cat
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

//interface and abstract classes
class Kitten2 implements Cat { // class kitten2 implement cat interface
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

contoh abstract class:
abstract class Kitten3 { // deklarasi sebuah abstract class
  void run();
  void jump();
  void lick();
}

class Kitten4 implements Kitten3 { // class kitten4 implements class kitten3 (abstract class)
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

NB: ketika kita meng extends atau inherite ke parent class, pada class yang mengunakan kata kunci extends kita wajib 
mengoverride semua properties dan juga functions yang ada pada parent class atau sumber class nya dengan menggunakan 
annotation @override sebelum nama masing2 properties maupun function nya. Dan jika kita mendeklarasikan sebuah class
dengan kata kunci abstract kita tidak dapat membuat instance dari class tersebut.

10. Async
async digunakan untuk menghindari callback dan membuat kode kita lebih enak dibaca dengan menggunakan kata kunci async 
dan await

contoh:
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

    Future<void> printWithDelay(String message) async { // ini merupakan async
      await Future.delayed(fiveSeconds); // dengan await
      print('meow is trying to catch a mouse');
    }
  }
}  

11. Exception
exception handling adalah sebuah metode yang digunakan untuk mengatasi error sehingga program yang kita jalankan tidak 
berhenti mendadak atau force close. exception ini menggunakan pasangan block yaitu try, catch, finally (optional) 
sebagai kata kuncinya. Biasanya sebuah pesan error itu sulit untuk diterjemahkan oleh manusia sehingga dengan 
menggunakan exception handling ini pesan error yang muncul dapat digantikan dengan pesan yang dapat diartikan dengan 
jelas oleh manusia.

contoh:
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
    try{ // block try dimana ada kemungkinan terjadinya exception
      var result = 4/null;
      print(result);
    } catch (e) { // jika exception terjadi maka compiler akan mengeksekusi block catch ini
      print('mewo doen\'t have legs :(');
    } finally {
      print('Akhir dari exception handling'); // block finally akan selalu dieksekusi baik ada maupun tidaknya exception
    }
  }

}