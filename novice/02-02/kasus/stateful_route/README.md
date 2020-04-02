Penjelasan singkat aplikasi:

1. Pada aplikasi ini terdapat dua halaman yaitu MyHomePage dan MyItemPage yang masing-masing halaman memiliki widgetnya sendiri-sendiri, diantaranya yaitu widget Text dan IconButton, dan semuanya merupakan StatefulWidget. Di dalam MyHomePage dan MyItemPage terdapat local variable dan juga constructor yang di gunakan untuk menyimpan dan menerima argument berupa title dari yang memanggilnya, dan juga baik MyHomePage maupun MyItemPage keduanya sama-sama memiliki class statenya sendiri-sendiri.

class MyHomePage extends StatefulWidget { // class MyHomePage inherit StatefulWidget
  MyHomePage({Key key, this.title}) : super(key: key); // constructor dari class MyHomePage

  final String title; // local variable yaitu title yang bertipe data String

  @override
  _MyHomePageState createState() => _MyHomePageState(); // pemanggilan class state dari MyHomePage
}

class MyItemPage extends StatefulWidget { // class MyItemPage
  MyItemPage({Key key, this.title}) : super(key: key); // constructor / special function
  final String title; // local variable

  static const String routeName = '/MyItemPage'; // local variable

  @override
  _MyItemPageState createState() => _MyItemPageState(); // pemanggilan class _MyItemPageState
}

2. Nah seperti yang sudah di jelaskan di atas, masing-masing halaman memiliki Text dan juga IconButton widgetnya masing-masing dan di setiap halaman juga terdapat FloatingActionButton widget nya. Untuk halaman MyHomePage jika IconButton atau FloatingActionButton nya di click maka widget tersebut akan mengeksekusi code yang ada pada property onPressed nya. Sama halnya pada halaman MyHomePage, pada halaman MyItemPage juga akan terjadi eksekusi kode pada property onPressed jika IconButton maupun FloatingActionButton widgetnya di tekan.

MyHomePage:
var button = IconButton(icon: Icon(Icons.access_alarm), onPressed: _onButtonPressed); // jika IconButoon pada halaman MyHomePage di tekan maka dia akan mengeksekusi method _onButtonPressed

void _onButtonPressed() {
    Navigator.pushNamed(context, MyItemPage.routeName); // pada method _onButtonPressed akan terjadi perpindahan halaman dari MyHomePage ke halaman destinasi yaitu MyItemPage.routeName
}

void _incrementCounter() {
    Navigator.pushNamed(context, MyItemPage.routeName); // Nah jika FloatingActionButton nya di tekan maka akan terjadi perpindahan halaman dari MyHomePage ke halaman destinasi yaitu MyItemPage.routeName
}

static const String routeName = '/MyItemPage'; // halaman destinasi dari IconButton maupun dari FloatingActionButton pada halaman MyHomePage yaitu sama, keduanya me refer ke MyItemPage.routeName yang bernilai /MyItemPage

MyItemPage:
var button = IconButton(icon: Icon(Icons.arrow_back), onPressed: _onButtonPressed); // jika user menekan IconButton pada halaman MyItemPage maka yang terjadi adalah eksekusi pada method _onButtonPressed

void _onButtonPressed() {
    Navigator.pop(context); // pada method _onButtonPressed terjadi pemanggilan widget Navigator dan method pop, yang artinya adalah kembali ke halaman sebelumnya yaitu halaman MyHomePage
}

void _onFloatingActionButtonPressed() {} // dan jika FloatingActionButton pada halaman MyItemPage di click maka tidak akan terjadi apa-apa

    