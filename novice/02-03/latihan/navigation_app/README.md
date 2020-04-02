Penjelasan singkat program:

1. Pertama kali ketika aplikasi dijalankan maka halaman yang pertama kali ditampilkan adalah HomePage, dikarenakan di property initialRoute bernilai '/' dimana nilai tersebut merujuk pada HomePage yang terdapat pada property routes.

initialRoute: '/', // property yang berfungsi untuk menentukan route awal pada aplikasi
routes: { // property yang berisi map yang bertipe <String, Widget> untuk navigation pada aplikasi
'/': (context) => HomePage(), // halaman HomePage() yang memiliki key '/'
'/detail': (context) => DetailPage(), // halaman DetailPage() dengan key '/detail'
ExtractArgumentsPage.routeName: (context) => ExtractArgumentsPage(),
},

2. Pada halaman HomePage ini terdapat satu image dan beberapa tombol yang dimana masing-masing tombol tersebut memiliki fungsi untuk berpindah dari halaman satu ke halaman lainnya (route) dengan atau tanpa membawa atau menerima data.

Image.network( // widget Image.network digunakan untuk mendapatkan image dari internet melalui url
'https://picsum.photos/250?image=9',
),
FlatButton(
color: Colors.orange,
child: Text('Using Push Named'),
onPressed: () {
    Navigator.pushNamed(context, '/detail'); // jika di click maka akan berpindah ke halaman DetailPage menggunakan method pushNamed dengan dua arguments yaitu context dan destination
},
),
FlatButton(
color: Colors.deepOrange,
child: Text('With arguments'),
onPressed: () { // jika di click maka akan berpindah ke halaman ExtractArgumentsPage dengan membawa data berupa string dan akan di tampilkan di halaman ExtractArgumentsPage
    Navigator.pushNamed(context, ExtractArgumentsPage.routeName,
        arguments: PageArguments(
            'Argument Page', 'This is the extracted message'));
},
),
FlatButton(
color: Colors.yellow,
child: Text('With onGenerateRoute'),
onPressed: () { // sama dengan tombol yang di atas hanya saja berbeda cara untuk mendapatkan datanya pada halaman tujuannya, dalam hal ini halaman tujuannya adalah PassArgumentsPage yang memiliki properties berupa loca variable, maka dari itu harus di berikan nilainya ketika memanggil class nya (PassArgumentsPage)
    Navigator.pushNamed(context, PassArgumentsPage.routeName,
        arguments: PageArguments('Argument onGenerateRoute',
            'This is the extracted message from onGenerateRoute function'));
},
),

3. Lalu ada satu buah button yang jika di klik maka pada halaman tujuannya (SelectionPage) akan ada dua pilihan, dan ketika kita memilih salah satu, maka hasil dari pilihan kita tadi akan di tampilkan pada halaman awal (HomePage).

SelectionButton(), // pemanggilan class dari HomePage yang akan mereturn sebuah tombol

class SelectionButton extends StatelessWidget { // class SelectionButton
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Choose an option'),
      onPressed: () {
        _navigateAndDisplaySelection(context); // sebuah button yang jika di clik maka akan memanggil method _navigateAndDisplaySelection
      },
      color: Colors.green,
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async { // asynchonous method
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectionPage())); // sebuah variable yang akan menampung nilai dari hasil pemilihan pada halaman SelectionPage dan akan menunggu sampai mendapatkan hasilnya karena ada kata kunci await

    Scaffold.of(context) // jika hasilnya sudah didapat maka hasil tersebut akan ditampilkan menggunakan widget SnackBar yang akan tampil pada HomePage
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(result)));
  }
}

