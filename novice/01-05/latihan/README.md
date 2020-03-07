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




