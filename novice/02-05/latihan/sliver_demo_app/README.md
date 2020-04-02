Penjelasan singkat aplikasi:

1. Aplikasi ini merupakan demonstrasi dari penggunaan silvers, di dalam aplikasi ini terdapat satu screen yang didalamnya terdapat 4 section. Masing-masing section memiliki tampilan yang berbeda-beda, ada yang menggunakan silver grid dan juga silver list. Pada setiap section terdapat header yang apa bila di lakukan action scroll down maka header tersebut akan mengecil dan ter pinned di atas masing-masing sectionnya, jadi headernya tidak akan out of screen alias hilang dari layar. Pertama-tama seperti biasa ketika aplikasi dibuka maka main method akan di eksekusi pertama kali, setelah itu eksekusi akan berlanjut ke class MyApp dan pada class ini terdapat app bar dan body.

void main() => runApp(MyApp()); // main function yang mendapat hasil return dari class MyApp

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // parent widget berupa MaterialApp
      title: 'Sliver Demo App Yeaah',
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar( // app bar yang terdapat di bagian atas layar
          title: Text('Slivers App Demo'),
          centerTitle: true,
          elevation: 0,
        ),
        body: CollapsingList(), // body atau bagian utama dari layar yang akan memanggil class CollapsingList
      ),
    );
  }
}

2. Kemudian pada class CollapsingList inilah akan ditentukan karakteristik dan juga bahavior dari setiap header, kemudian terdapat juga pemanggilan class _SilverAppBarDelegate yang mereturn nilai bertipe widget.

class CollapsingList extends StatelessWidget {
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader( // class ini mereturn nilai dengan tipe SliverPersistentHeader
      pinned: true, // atribut yang membuat headernya tetap tampil di layar walaupun di scroll down
      delegate: _SliverAppBarDelegate( // pemanggilan class _SliverAppBarDelegate dengan melempar 3 atribut
          minHeight: 60.0,
          maxHeight: 200.0,
          child: Container(
              color: Colors.lightBlue, child: Center(child: Text(headerText)))),
    );
  }

3. Pada bagian utama di widget build inilah semua komponen dari aplikasi disusun dan dibungkus menjadi satu kesatuan dengan CustomScrollView.

@override
  Widget build(BuildContext context) {
    return CustomScrollView( 
      slivers: <Widget>[
        makeHeader('Header Section 1'), // header section 1 yang memanggil function makeHeader yang terdapat pada class CollapsingList dan melempar sebuag arguments berupa string
        SliverGrid.count( // yang isinya berupa sliver grid
          crossAxisCount: 3, // jumlah colomn nya yaitu 3
          children: <Widget>[ // item-item yang akan di tampilkan di section 1
            ...
          ],
        ),
        makeHeader('Header Section 2'), // header section 2
        SliverFixedExtentList( // isinya berupa list container dengan warna yang berbeda-beda
            delegate: SliverChildListDelegate([
              ...
            ]),
            itemExtent: 150.0),
        makeHeader('Header Section 3'), // header section 3
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0),
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text('Grid item $index'),
            );
          }, childCount: 20),
        ),
        makeHeader('Header Section 4'), // header section 4
        SliverList(
            delegate: SliverChildListDelegate([
          ...
        ]))
      ],
    );
  }