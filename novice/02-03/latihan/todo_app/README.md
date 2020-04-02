Penjelasan singkat aplikasi:

1. Pada aplikasi ini terdapat beberapa widget ListView yang masing-masing terdapat catatan yang berbeda-beda dan jika diclick maka akan berpindah ke halaman yang berbeda yang digunakan untuk menampilkan detail dari masing-masing catatan.

class HomePage extends StatelessWidget { // halaman HomePage
  final todos = List<Todo>.generate( sebuah variabel yang menampung 20 List bertipe Todo yang masing-masing list berisi title dan description.
      20,
      (i) => Todo(
            'Todo $i',
            'A brief description aboute todo $i',
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder( // Widget ListView.builder yang berfungsi untuk membangun masing-masing ListView dan menampilkannya di layar
        itemCount: todos.length, // property itemCount yang bersisi panjangnya list yang akan ditampilkan
        itemBuilder: (context, index) { // anonymous function dengan dua arguments
          return ListTile(
            title: Text(todos[index].title),
            onTap: () { // jika salah satu list di click maka akan berpindah ke halaman DetailPage dengan membawa arguments yang berisi todos[index] dimana index ini yang menjadi indikator item mana yang diclick
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(), settings: RouteSettings(
                        arguments: todos[index],
                      )));
            },
          );
        },
      ),
    );
  }
}

2. Pada halaman DetailPage akan menampilkan description dari catatan yang di click pada halaman HomePage, dengan cara menerima data yang di dapat dari arguments pada property onTap pada widget ListTile.

class DetailPage extends StatelessWidget { // halaman DetailPage
  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context).settings.arguments; // variable todo bertipe Todo yang bernilai sebuah List dengan property title dan juga description
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(todo.description), // menampilkan description dari catatan yang di click
      ),
    );
  }
}