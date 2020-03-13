Penjelasan singkat aplikasi:

1. Pada aplikasi ini semuanya menggunakan StatelessWidget yang artinya bahwa aplikasi ini tidak terjadi perubahan pada widget-widget nya alias bersifat statis. naah di aplikasi ini terdapat dua halaman atau dua tampilan yang berbeda, yang pertama FirstPage dan yang kedua SecondPage, pada masing-masing halaman terdapat IconButton, AppBar dan Text widget yang digunakan sebagai indikator untuk masing-masing halaman.

class FirstPage extends StatelessWidget { // class FirstPage
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Page', // text pada appBar untuk membedakan masing-masing halaman
        ),
        backgroundColor: Colors.deepOrange,
      ),

class SecondPage extends StatelessWidget { // class SecondPage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
        ),
        backgroundColor: Colors.deepOrange,
      ),

2. Jika user menekan pada IconButton maka block code yang terdapat pada property onPressed akan di eksekusi, pada aplikasi ini setiap kali user menekan IconButton maka akan terjadi perpindahan halaman dari halaman FirstPage ke halaman SecondPage begitu juga sebaliknya. Hal ini dimungkinkan karena pada property onPressed pada masing-masing IconButton di setiap halaman terdapat widget Navigator dengan method push nya.

onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondPage()), // SecondPage() di sini merupakan destinasi yang akan di tuju oleh Navigatornya, berarti jika kita sedang berada pada halaman FirstPage maka destinasinya adalah SecondPage, dan begitu juga sebaliknya
    );
},