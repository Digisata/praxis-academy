Penjelasan singkat program:

1. Classes:
Classes adalah blue print dari sebuah object dalam OOP programming language, dalam dart kita bisa mendeklarasikan sebuah class dengan menggunakan kata kunci class yang diikuti oleh nama classnya.

2. Named constructor:
Named constructor digunakan apabila kita menginginkan field yang berbeda dalam suatu class melalui deklarasi dan inisialisasi sebuah object.

contoh:
// named constructor
  Mouse.newBaby() {
    type = 'mice';
    color = 'red';
    age = 3;
  }

dan di main method kita buat instance class nya dengan cara:
Mouse babyMouse = Mouse.newBaby();

3. Inheritance
Inheritance atau pewarisan adalah salah satu prinsip utama dalam OOP programming language, dalam dart kita bisa menerapkan inheritance dengan menggunakan kata kunci extends maupun implement setelah nama class dan diikuti oleh parent class nya.

contoh:
// parent class
abstract class AbstrackMouse {
  void makeSound();

  void run();
}

// mouse class inherit with AbstractMouse class
class Mouse extends AbstrackMouse {}

4. Methods
Method atau function ini berguna untuk menyelesaikan sebuah pekerjaan atau tugas yang spesifik dalam OOP programming language, untuk membuat sebuah method kita hanya perlu memberikan return type yang diikuti oleh nama methodnya.

contoh:
void run() => print('catch me human, i know you cant');

5. Getter and setter
Getter and setter ini berfungsi untuk memodifikasi dan mengambil suatu nilai dari private variabel dalam sebuah class, dengan cara ini dimungkinkan untuk melakukan perubahan pada variabel walaupun variabel tersebut memilik private modifier.

contoh:
void get getType {
    return print('My type is $type');
  }

  set setType(String type) {
    this.type = type;
  }

6. Controlling accessibility
Controlling accessibility ini digunakan ketika kita ingin me restrict atau membatasi ruang lingkup atau cakupan dari sebuah property dan method dalam sebuah class. Secara default jika kita tidak memberikan modifier ini secara eksplisit maka secara otomatis dart akan mengenalinya sebagai public modifier dan dapat diakses dari manapun.

contoh:
var _number = 50 // variabel number bersifat private karena didahului oleh underscore _

7. Abstract class
Seperti namanya, sebuah class yang di deklarasikan menggunakan kata kunci abstract berarti kelas tersebut property dan behavior nya masih samar atau belum diimplementasikan.

contoh:
// abstract class
abstract class AbstrackMouse {
  void makeSound();

  void run();
}

8. Static method
Sebuah method yang menggunakan kata kunci static maka method tersebut bersifat umum untuk semuanya. sehinggia kita bisa mendapatkan hasil yang sama dimanapun, baik di class dalam satu file maupun class yang berada pada file yang berbeda.

9. Enum
Enum ini singkatnya adalah nama variabel dan nilainya menjadi satu kesatuan dan sama, jadi kita tidak perlu mendeklarasikan dan menginisialisasikan sebuah variabel satu persatu. Dengan menggunakan enum kita bisa melakukan kedua hal tersebut secara bersamaan.

contoh:
enum Doing { SLEEPING, SOUNDING, DIGGING, RUNNING }

10. Generics
Generics ini memungkinkan kita membuat instance dari sebuah class dengan tipe data yang berbeda-beda, sehingga kita tidak perlu membuat class-class baru untuk masing-masing tipe datanya lagi, cukup satu saja dan kita bisa menggunakannya untuk berbagai tipe data.

contoh:
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

// penerapannya dalam main method
DataPlacer<String> dataPlacer = DataPlacer('Save me please');
print(dataPlacer.getData());

