Penjelasan singkat program:

1. Pada aplikasi ini, didalamnya terdapat sebuah logo dengan animasi yang sangat sederhana. Saat pertamakali aplikasi dijalankan logo tersebut mula2 akan kecil dan transparan selang 2 detik kemudian logo tersebut akan perlahan-lahan menjadi bersar dan semakin besar, setelah logo tersebut mencapai ukuran maksimumnya maka logo tersebut akan kembali seperti semula seperti saat aplikasi pertama kali dijalankan.

Animation<double> animation; // variable animation yang bertipe Animation<double>
AnimationController controller; // variable controller digunakan untuk mengontrol semua animasi

@override
void initState() { // initState adalah method yang pertama kali di eksekusi ketika class nya dipanggil
super.initState();
// inisialisasi controller dengan atribut yang pertama duration dan nilainya 2 detik, dan yang kedua adalah vsync yang nilainya di ambil dari mixin SingleTickerProviderStateMixin
controller =
    AnimationController(duration: const Duration(seconds: 2), vsync: this);
// inisialisasi animation dengan animasi memantul seperti bola
animation = CurvedAnimation(parent: controller, curve: Curves.bounceInOut)
    ..addStatusListener((status) { // method addStatusListener dengan anonymous function
    if (status == AnimationStatus.completed) // jika status nya bernilai complete (logo dalam ukuran maksimal) maka akan di kembalikan ke ukuran semula atau di balik
        controller.reverse(); 
    // jika status bernilai dismissed atau dalam posisi awal maka logo akan di perbesar sampai ukuran maksimun
    else if (status == AnimationStatus.dismissed) controller.forward();
    });
controller.forward();
}

2. Setelah semua persiapan animasi sudah selesai, maka selanjutnya adalah proses menerapkan animasi tersebut dengan menambahkan efek transparan dan juga zoom pada logo.

static final _opacityTween = Tween<double>(begin: 0.0, end: 1); // variable _opacityTween menampung nilai dari transparansi logo
static final _sizeTween = Tween<double>(begin: 0, end: 300); // variable yang bernilai ukuran awal dan akhir dari logo

AnimatedLogo({Key key, Animation<double> animation}) // primary constructor dengan optional parameter berupa key dan animation
    : super(key: key, listenable: animation);

@override
Widget build(BuildContext context) {
final animation = listenable as Animation<double>;
return Center(
    child: Opacity(
    opacity: _opacityTween.evaluate(animation),
    child: Container( // widget container yan menampung child berupa logo
        margin: EdgeInsets.symmetric(vertical: 10),
        height: _sizeTween.evaluate(animation), // tinggi container di ambil dari variable _sizeTween
        width: _sizeTween.evaluate(animation), // samahalnya atribut height
        child: FlutterLogo(), // logo yang digunakan
    ),
    ),
);
}
}