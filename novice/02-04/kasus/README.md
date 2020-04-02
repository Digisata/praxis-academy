Penjelasan singkat aplikasi:

1. Di aplikasi yang saya buat kali ini, pada halaman pertama akan terdapat beberapa list daftar tempat-tempat wisata yang ada di indonesia. Dari masing-masing list tersebut terdapat sekilas deskripsi dari tempat wisatanya, dan ketika salah satu list tersebut di click maka akan di arahkan ke halaman detail dari tempat wisata yang di pilih. User dapat memberikan rating atau penilaian dengan cara menekan tombol add yang ada pada bagian bawah gambar. Pertama-tama ketika aplikasi berjalan maka class HomePage akan dieksekusi, dan di bagian method body terdapat beberapa list yang digunakan untuk menyimpan data-data yang akan ditampilkan.

static final List<String> _names = [ // list _names untuk menyimpan nama-nama tempat wisata
'Bromo',
'Toba',
'Parangtriris',
'Pantai Kuta',
'Waduk Sermo'
];
static final List<String> _locations = [ // list lokasi dari tempat wisata
'Pasuruan',
'Sumatra Utara',
'Bantul',
'Bali',
'Gunungkidul'
];
static final List<String> _images = [ // gambar dari masing-masing tempat wisata
'bromo.jpg',
'toba.jpg',
'parangtritis.jpg',
'kuta.jpg',
'sermo.jpg'
];
static final List<int> _starts = [98, 99, 97, 99, 96]; // score masing-masing tempat wisata
static int randomNumber; // variable randomNumber berfungsi untuk menyimpan angka acak yang di hasilkan dari calss Random() dan digunakan sebagai index untuk mengakses element dari masing-masing list

final touristAttraction = List<TouristAttraction>.generate( // ini merupakan list dengan tipe TouristAttraction yang memiliki berbagai local variable
    20, // banyaknya item yang akan dibuat
    (i) => TouristAttraction( // i sebagai indikator index
        '$i', // bernilai 0, 1, 2 dst
        '${_names[_generateRandomNumber()]}', // argument yang mengakses element pada list _names di index (hasil return dari method _generateRandomNumber()) ke n
        '${_locations[randomNumber]}',
        '${_names[randomNumber]} merupakan sebuah destinasi wisata yang terdapat di ${_locations[randomNumber]} dan bla bla blaa',
        '${_images[randomNumber]}',
        _starts[randomNumber]));

static int _generateRandomNumber() { // method yang mereturn nilai bertipe int
randomNumber = Random().nextInt(5); // menghasilkan angka acak dari 0 - 5 dan menimpannya di variable randomNumber
return randomNumber; // return nilai dari randomNumber
}

2. Setelah semua local variable di berikan nilai langkah selanjutnya yaitu menampilkan nilai-nilai tersebut ke layar dengan menggunakan widget ListView.

body: ListView.builder( // widget ListView
padding: EdgeInsets.only(right: 5, left: 5),
itemCount: touristAttraction.length, // nilainya sama dengan banyaknya item pada list touristAttraction
itemBuilder: (context, index) {
    return ListTile(
    contentPadding: EdgeInsets.all(5),
    leading: Hero( // widget hero untuk transisi dari satu halaman ke halaman lainnya
        tag: '${touristAttraction[index].id}', // atribut tah bernilai id yang bersifat uniqe
        child: Image.asset(
        'images/${touristAttraction[index].image}', // mengakses image sesuai dengan item pada list
        width: 70,
        height: 50,
        fit: BoxFit.cover, // ukuran gambar akan menyesuaikan ukuran pada atibut leading
        ),
    ),
    title: Text(touristAttraction[index].name),
    subtitle: Text(touristAttraction[index].description, maxLines: 1),
    onTap: () { // action ketika salah satu item pada list di click
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(), // akan di arahkan ke halaman DetailPage
                settings: RouteSettings(
                arguments: touristAttraction[index], // dengan melempar arguments berupa list pada spesifik index yang di click
                )));
    },
    );
},
),

3. Kemudian yang terakhir pada halaman detail page terdapat beberapa widget yang seduah diatur sedemikian rupa sehingga membentuk suatu layout. Hal yang perlu diperhatikan pada halaman ini adalah bagaimana cara nya untuk menerima data yang di kirim dari halaman HomePage, dan juga bagaimana caranya menganimasikan IconButton ketika diclick.

// ini adalah caranya menerima data dan menyimpannya ke suatu variable
final TouristAttraction touristAttraction = 
        ModalRoute.of(context).settings.arguments;

children: <Widget>[
Container(
    padding: const EdgeInsets.only(bottom: 8),
    child: Text(
    touristAttraction.name, // mengakses nama tempat wisata dan menampilkannya
    style: TextStyle(
        fontWeight: FontWeight.bold,
    ),
    ),
),
Text(
    touristAttraction.location, // menampilkas lokasi tempat wisata tepat dibawah nama tempatnya
    style: TextStyle(
    color: Colors.grey[500],
    ),
)
],

_FavoriteWidgetState(this._favoriteCount);

AnimationController _animationController; // variable yang digunakan untuk mengontrol semua animasi
bool _isFavorited = true; // sebuah flag yang menjadi penentu apakah status icon nya itu di sukai atau tidak
int _favoriteCount; // jumlah score dari tempat wisata tersebut

@override
void initState() {
super.initState();
_animationController = AnimationController( // inisialisasi _animationController dengan durasi selama 300 ms
    vsync: this, duration: const Duration(milliseconds: 300));
}

child: Container(
child: Text('$_favoriteCount'), // menampilkan jumlah score di sebelah kanan IconButton
),

void _toggleFavorite() { // method yang menjadi penentu apakah iconnya akan dirubah atau tidak berdasarkan status dari flag _isFavorited
setState(() {
    if (_isFavorited) {
    _favoriteCount--;
    _isFavorited = !_isFavorited;
    _animationController.forward();
    } else {
    _favoriteCount++;
    _isFavorited = !_isFavorited;
    _animationController.reverse();
    }
});
}