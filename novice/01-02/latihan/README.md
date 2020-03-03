Penjelasan singkat latihan 01-02

1. Kata kunci
keyword atau kata kunci pada dart ada banyak, disini saya menggunakan sebagian kecilnya saja diantaranya:
- abstract: digunakan untuk mendeklarasikan class atau method sebagai abstract, dengan kata lain clas atau method tersebut implementasinya belum jelas atau ada.
- assert: berfungsi untuk melakukan checking pada suatu kondisi agar program yang kita buat tidak memiliki kemungkinan error.
- break: berfungsi untuk menghentikan alur program.
- case: digunakan bersamaaan dengan switch yang berfungsi untuk mengecek nilai yang diberikan dan melakukan eksekusi jika nilai tersebut bernilai true.
- catch: digunakan bersamaan dengan try pada exception handling yang berfungsi untuk mengeksekusi block program jika ditemui terdapat exception pada block try.
- continue: digunakan untuk men skip alur program jika suatu kondisi bernilai true.

2. Variabel var, final, dan const
- const: berfungsi untuk mendeklarasikan suatu variabel yang bersifat immutable dan seterusnya.
- var: digunakan untuk menentukan tipe data pada suatu variable dengan menggunakan type inference yang penentuan nilai nya didasarkan pada nilai yang di berikan pada variabel tersebut.
- final: suatu variabele yang dideklarasikan menggunakan kata kunci final, berarti variabel tersebut harus diinisialisasi saat itu juga dan nilainya dtidak dapat dirubah.

3. Tipe data numbers, strings, booleans, runes, symbol
- numbers: tipe data ini adalah bilangan bulat bukan pecahan, misal 100, 15, 42 dll.
- string: tipe data ini bisa menampung string literal, yaitu serangkaian huruf, angka, simbol dll.
- booleans: tipe dataa ini hanya memiliki dua kemungkinan nilai, kalu bukan true berarti false.
- runes: runes merupakan tipe data yang berfungsi untuk menangani unicode, misal emoji.
- symbol: digunakan untuk menyimpan hubungan antara string yang dapat dibaca manusia dan string yang dioptimalkan untuk digunakan oleh komputer.

4. Fungsi / function
function atau method digunakan untuk melakukan hal tertentu pada sebuah program, misalnya function untuk menghitung luas lingkaran, menentukan bilangan ganjil dan genap dll, sebuah function hanya bisa berjalan jika terjadi pemanggilan.

5. Operators
operator pada dart ada beberapa kategori, misal operator logika, bitwise, perbandingan, aritmatika, condition dll, berikut ini contoh sekaligus penjelasan singkatnya:
- <: lebih kecil.
- >=: lebih besar atau sama dengan.
- %: modulo operator (sisa hasil bagi).
- &&: operator and.
- ==: operator apakah sama dengan.
- >>: bitwise operator dll.

6. Control flow
control flow merupakan penentu bagaimana program kita akan berjalan, ada beberapa macam kontrol flow diantaranya:
- if, else if, else, switch case, dan assert: merupakan sebuah checking condition yang bilamana hasil dari pengecekannya bernilai true dia akan mengeksekusi statement yang ada di block body nya.
- for, while, dan do while: merupakan sebuah looping block yang iterasi nya tidak akan berhenti jika nilai dari kondisinya masih true.
- break, continue: digunakan untuk melanjutkan atau menghentikan alur jalannya program.

7. Error and exception handling
error adalah suatu hal yang sudah melekat pada saat kita melakukan pengkodean, dengan adanya error inilah kita dapat belajar agar tidak melakukan kesalahan yang sama lagi. Namun tenang saja error ini bisa kita cegah agar program yang telah kita buat tidak berhenti mendadak atau bahkan force close, yaitu dengan menggunakan metode exception handling dengan menerapkan try and catch. Tyr and catch adalah cara agar error atau exception yang muncul tidak mengganggu jalannya program, sehingga kemungkinan2 buruk bisa kita cegah.





