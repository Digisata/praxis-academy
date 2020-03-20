Penjelasan singkat aplikasi:

1. Pada aplikasi ini terdapat object yang mana ketika kita berikan action click maka akan terjadi transformation dari suatu object ke object yang lainnya. Diantara object-object tersebut adalah kotak, persegi panjang, lingkaran dll yang masing-masing object memiliki karakteristiknya sendiri-sendiri.

AnimationController _controller; // variable _controller yang berfungsi untuk mengatur semua animasi yang ada

@override
void initState() { // method yang pertama kali di eksekusi ketika classnya dipanggil
super.initState();
_controller = // inisialisasi _controller dengan durasi 2 detik
    AnimationController(duration: const Duration(seconds: 2), vsync: this);
}

2. Penerapan animasi ke masing-masing icon, dan memberikan nilai pada atribut-atribut yang ada dengan local variable yang telah dideklarasikan dan juga diinisialisasi ketika pertamakali class nya dipanggil.

Widget _buildAnimation(BuildContext context, Widget child) {
return Container(
    padding: padding.value, // atribut padding dengan mengambil nilai dari variable padding
    alignment: Alignment.bottomCenter, // pengaturan posisi animasinya yang pada akhirnya akan berada di tengah
    child: Opacity(
    opacity: opacity.value,
    child: Container(
        width: width.value,
        height: height.value,
        decoration: BoxDecoration(
        color: color.value,
        border: Border.all(
            color: Colors.indigo[300],
            width: 3.0,
        ),
        borderRadius: borderRadius.value,
        ),
    ),
    ),
);
}