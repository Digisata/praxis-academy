Penjelasan singkat program:

1. Future
Future adalah sebuah class yang merepresentasikan sebuah hasil dari asynchronous operation dan memiliki dua kemungkinan state, uncompleted atau completed. jika sebuah asynchronous operation sukses di jalankan maka hasilnya ada dua juga, kalau bukan complete with a value pasti complete with an error.

// contoh sebuah asynchronous method yang mereturn hasil berupa Future<String>
Future<String> hello() async {
  return 'hello from hello method';
}

2. Async
Async adalah sebuah keyword yang digunakan untuk membuat sebuah class atau method dari yang semula synchronous programming menjadi asynchronous programming dengan menambahkan async sebelum tag body nya. Class atau function yang terdapat kata kunci async maka class atau function tersebut akan berjalan synchronously sebelum await pertama terpanggil.

// main method dengan kata kunci async sebelum tag body nya
void main() async {
  var x = await four(); // asynchronous programming akan diterapkan
  print(x);
}

3. Await
Await adalah kata kunci yang ada pada dart yang hanya bisa di terapkan pada asynchronous class ataupun method. Await ini memiliki fungsi untuk menunda proses eksekusi program ke baris selanjutnya sampai proses yang dilakukan selesai terlebih dahulu.

/* pemanggilan method threeCount dengan didahului kata kunci await, jika proses nya sudah selesai maka hasil return dari method threeCount nya akan disimpan pada variabel three dan kemudian dicetak dengan perintah print */
var three = await threeCount();
print(three);

4. Stream
Stream adalah sebuah class yang memungkinkan kita mendapatkan potongan-potongan data satu per satu tanpa harus menunggu semua data nya terkumpul. Tidak seperti class future yang mereturn sekali ketika operasinya telah selesai, class stream dapat mereturn masing-masing data secara individu dan mengeksekusi operasi selanjutnya.

// sebuah stream yang men trigger setiap perubahan yang terjadi pada list numbers 
List<int> numbers = [1, 2, 5, 7, 2, 7, 4];
Stream stream = testStream(numbers);

5. Listen
Listen merupakan sebuah method yang memungkinkan sebuah stream untuk mendapatkan setiap perubahan yang terjadi, sehingga dari perubahan-perubahan yang terjadi tersebut bisa di lakukan suatu aksi tertentu.

// sebuah stream yang melisten return value dan kemudian mencetak hasilnya
stream.listen((value) => print(value));

6. Yield
Kata kuncu yield sama seperti halnya kata kunci return, bedanya ialah jika return di eksekusi maka operasi nya selesai dan valuenya di kembalikan ke class / method yang memanggilnya, sedangkan yield ketika dieksekusi dia mengembalikan valuenya tetapi tidak menghentikan proses yang terjadi di tempat dia dieksekusi.

/* method testStream dengan kata kunci yield yang berfungsi untuk mereturn value dari setiap iterasi yang terjadi berupa Stream<int> ke class / method yang memanggil testSream lalu kembali melakukan iterasi sampai kondiinya bernilai false. */
Stream<int> testStream(List<int> numbers) async* {
  for (int i in numbers) yield i;
}






