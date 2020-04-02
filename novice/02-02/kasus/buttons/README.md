Penjelasan singkat program:

1. Pertama-tama ketika aplikasi di jalankan, main function akan terpanggil dan di dalam main function ini akan mereturn method runApp yang berisi pemanggilan class MyButton yang mengextends class StatefulWidget. Kemudian pada class MyButton ini akan terjadi pembuatan state yang ditandai dengan pemanggilan method createState yang mereturn class state dari class MyButton yaitu _MyButtonState.

void main() => runApp(MyButton()); // main function dipanggil

class MyButton extends StatefulWidget { // class MyButton yang inherit dengan class StatefulWidget
  @override
  _MyButtonState createState() => _MyButtonState(); // pembuatan state dengan method createState
}

2. Kemudian didalam class MyButton ini terdapat widget build yang didalamnya mereturn widget MaterialApp dengan segala property-property yang ada dilamnya seperti title, home dll.

@override
  Widget build(BuildContext context) { // widget build
    return MaterialApp(
      title: 'My Button', // property title
      debugShowCheckedModeBanner: false,
      home: Scaffold( // property home yang berisi Scaffold widget dengan segala property nya
        appBar: AppBar(
          title: Text('Stateful Widget'), // title yang akan di tampilkan di appBarr aplikasi
          backgroundColor: Colors.deepPurple, // memberi warna untuk appBar (ungu)
        ),

3. Didalam property body pada widget scaffold terdapat tombol yang berfungsi untuk menampilkan text pada list secara berurutan. Di dalam class MyButton ini terdapat local variable yang berfungsi untuk menyimpan data-data yang dibutuhkan oleh aplikasi.

int counter = 0; // variable counter bertipe int berguna untuk indikator 
List<String> strings = ['FLutter', 'is', 'awokawok']; // list strings yang menyimpan data untuk diberikan kepada variable displayedString
String displayedString = ''; // variable displayedString untuk menyimpan data dari variable strings yang kemudian akan ditampilkan ke layar

RaisedButton( // widget button yang apabila di click akan menampilkan pesan yang berbeda-beda di layar
    child: Text(
    'Touch me!', // text atau label yang nampak pada button
    style: TextStyle(
        color: Colors.white,
        fontStyle: FontStyle.italic,
        fontSize: 20),
    ),
    color: Colors.red, // warna dari button yaitu merah
    onPressed: onPressed, // jika user menekan button ini maka akan terjadi pemanggilan method onPressed
)

4. Terakhir pada method onPressed, terjadi pemanggilan method setState yang mana method ini akan memberitahukan kepada framework bahwa telah terjadi perubahan pada aplikasi sehingga framework akan melakukan rebuild aplikasi dengan cara mengeksekusi widget build kembali, sehingga widget-widget yang ada didalamnya akan di refresh atau di bangun kembali dengan sangat cepat.

void onPressed() { // mothod onPressed
    setState(() { // method setState yang berfungsi sebagai pemicu terjadinya rebuild ulang aplikasi
      displayedString = strings[counter]; // pertama-tama displayedString akan berisi 'Flutter', karena counter pada awalnya bernilai 0 dan element pada index ke 0 dari list strings adalah 'Flutter'
      counter = counter < 2 ? counter + 1 : 0; // kemudian nilai counter akan di naikkan satu karena 0 < 2 sehingga pada pengeclick an tombol selanjutnya variable displayedString akan bernilai 'is' karena counter bernilai 1, dan akan di tampilkan ke layar. Jika counter bernilai 2 maka nilai counter akan di reset menjadi 0 kembali sehingga maksimal value dari counter yaitu 2, hal ini sama dengan maksimal index yang dimiliki oleh list strings yang memiliki length = 3 dan max index = 2 yang bernilai 'awokawok'.
    });
  }