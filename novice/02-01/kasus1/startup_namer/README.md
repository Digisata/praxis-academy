Penjelasan singkat aplikasi startup namer

1. Pertama-tama ketika user membuka aplikasi startup namer maka method main akan terpanggil pertamakali dan akan menjalankan method runApp yang didalamnya ada pemanggilan class MyApp.

void main() => runApp(MyApp());

2. Kemudian pada class MyApp akan meng extends StateLessWidget dan meng override widget build. Widget build akan mereturn MaterialApp yang didalamnya terdapat beberapa properties seperti title, theme, home dll. Dan pada property home tertapat pemanggilan class RandomWords.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator', // property title
      debugShowCheckedModeBanner: false,
      theme: ThemeData( // property theme
        primaryColor: Colors.white,
      ),
      home: RandomWords(), // pemanggilan class RandomWords
    );
  }
}

3. Kemudian eksekusi program akan berlanjut pada class RandomWords yang mana class tersebut meng extends StateFulWidget dan meng override method createState() yang mereturn class RandomWordState.

class RandomWords extends StatefulWidget { // inherit dengan StatefulWidget
  @override // overriding atau mereplace function createState yang ada pada StatefulWidget
  _RandomWordsState createState() => _RandomWordsState(); // memanggil RandomWordState dan mereturn hasilnya
}

4. Nah pada class RandomWordsState inilah terdapat pemanggilan widget build yang mana widget build ini digunakan untuk membangun widget-widget yang ada pada aplikasi dan menampikannya ke layar. Didalam class RandomWordsState ini terdapat beberapa list yang digunakan untuk menyimpan pasangan kata dari library english_words.

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[]; // list suggestions untuk meyimpan pasangan kata
  final Set<WordPair> _saved = Set<WordPair>(); // list saved untuk menyimpan favorite kata
  final _biggerFont = const TextStyle(fontSize: 20.0); // variable biggerFont untuk text styling

  @override // overriding widget build
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'), // title atau judul yang tampil di appbar 
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved), // icon list untuk melihat nama-nama favorite dengan cara manambahkan property onPressed yang memanggil method pushSaved
        ],
      ),
      body: _buildSuggestion(), // property body yang memanggil widget buildSuggestion
    );
  }
}

5. Setelah itu widget buildSuggestion akan di eksekusi secara synchronous programming dan mereturn widget ListView.

 Widget _buildSuggestion() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0), // setiap item akan memiliki padding pada setiap sisinya sebesar 16
        itemBuilder: (context, i) { // anonymous function yang memiliki argument context dan i
          if (i.isOdd) return Divider(); // kondisi untuk mengecek apakah i adalah bilangan genap
          final index = i ~/ 2; // inisialisasi variable index
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); // membuat random words dan menyimpan hasilnya pada list suggestion
          }
          return _buildRow(_suggestions[index]); // pemanggilan widget buildRow untuk membangun setiap item dan menampilkannya di layar
        });
  }


6. Setelah mendapatkan list yang berisi nama-nama random dari library english_words, selanjutnya masing-masing pasangan kata tersebut akan di tampilkan satu per satu pada layar dengan dibungkus menggunakan widget ListView.

  Widget _buildRow(WordPair pair) { // widget buildRow dengan paramater bertipe WordPair
    final bool alreadySaved = _saved.contains(pair); // variable alreadySaved yang berisi nilai boolean dari hasil pemanggilan method contains yang menerima argument pair bertipe WordPair
    return ListTile( // mereturn widget ListTile dengan berbagai properties didalamnya
      title: Text( // property title dengan widget Text
        pair.asPascalCase, // menampilkan isi dari paramater pair
        style: _biggerFont, // implementasi variable biggerFont pada property style
      ),
      trailing: Icon( 
        alreadySaved ? Icons.favorite : Icons.favorite_border, // kondisi dimana jika nilai dari variable alreadySave adalah true maka icon nya menjadi full fill dan jika tidak maka hanya icon berupa border saja
        color: alreadySaved ? Colors.red : null, // jika true maka warna iconnya menjadi merah
      ),
      onTap: () { // memberikan action ketika user menekan icon
        setState(() {
          alreadySaved ? _saved.remove(pair) : _saved.add(pair); // jika sebelumnya tersimpan maka ketika di tekan iconnya berubah jadi border saja tetapi ketika belum tersimpan maka iconnya menjadi full dan berwarna merah
        });
      },
    );
  }

  7. terakhir pada method pushSaved inilah yang bertanggungjawab untuk menampilkan list nama-nama yang menjadi favorite user.

  void _pushSaved() {
    Navigator.of(context) // navigate ke halaman favorite names
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      final Iterable<ListTile> tiles = _saved.map((WordPair pair) {
        return ListTile( // widget listTile untuk menyusun data kedalam bentuk list
          title: Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      });
      final List<Widget> divided =
          ListTile.divideTiles(context: context, tiles: tiles).toList();
          return Scaffold(
            appBar: AppBar(title: Text('Saved suggestion'),),
            body: ListView(children: divided),
          );
    }));
  }