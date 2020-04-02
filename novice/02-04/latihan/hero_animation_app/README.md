Penjelasan singkat aplikasi:

1. Aplikasi ini adalah sebuah demonstrasi yang sangat sederhana dari widget Hero, yaitu dengan menggunakan dua route atau halaman yang berbeda, dimana masing-masing route memiliki image yang ukuran dan letaknya berbeda antara satu halaman dengan halaman yang lainnya. Ketika di klik pada gambarnya maka efek transisi akan terjadi dari halaman pertama menuju ke halaman tujuan dengan menganimasikan imagenya.

child: PhotoHero( // memanggil class PhotoHero dengan melempar arguments yang diperlukan
    photo: 'images/flippers-alpha.png', // gambar yang digunakan diambil dari folder images dan telah di setting di file pubspec.yaml
    width: 300.0, // ukuran dari gambar
    onTap: () {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) { // jika gambar di tekan maka akan menuju ke halaman tujuan
        return Scaffold( // tampilan halaman tujuan
        appBar: AppBar(
            title: Text('Flippers Page'),
        ),
        body: Container(
            color: Colors.lightBlue,
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.topLeft, // gambar pada halaman tujuan akan diposisikan ke pojok kiri atas
            child: PhotoHero( // pemanggilan class PhotoHero pada halaman kedua dengan melempar arguments yang berbeda dari halaman pertama
            photo: 'images/flippers-alpha.png',
            width: 100.0,
            onTap: () {
                Navigator.of(context).pop(); // jika gambar pada halaman kedua di tekan maka akan berpindah kembali ke halaman awal
            },
            ),
        ),
        );
    }));
    },
),

2. Berikut ini merupakan class PhotoHero yang bertanggung jawab untuk menentukan karakteristik (lebar) dan juga behavior dari image pada halaman pertama dan juga pada halaman kedua.

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key key, this.photo, this.onTap, this.width}) // primary constructor untuk memberikan nilai pada local variable
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero( // Widget Hero yang membuat efek animasi ketika terjadi pergantian route
          tag: photo, // atribut tag harus sama antara halam awal dengan halaman tujuan karena berpengaruh pada efek animasinya
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Image.asset(photo, fit: BoxFit.contain), // ukuran gambarnya akan menyesuaikan ukuran dari widget SizedBox
            ),
          )),
    );
  }
}