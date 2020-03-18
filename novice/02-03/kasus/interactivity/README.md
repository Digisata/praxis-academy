Penjelasan singkat aplikasi:

1. Pada aplikasi ini saya merubah icon dan juga menambahkan launch screen dengan cara menambahkan gambar dan juga menambahkan beberapa baris code. Pada direktory root aplikasi kemudian masuk ke android/app/src/main/res/drawable/launch_background.xml dan tambahkan baris code berikut ini.

<item>
    <bitmap
        android:gravity="center" // posisi dimana gambar kita ditampilkan di layar
        android:src="@mipmap/ic_launcher" /> // gambar atau icon yang akan kita tampilkan
</item>

2. Kemudian untuk merubah icon launcher dari aplikasinya cukup mudah, siapkan terlebih dahulu gambar yang akan digunakan untuk icon launch yang baru, jika sudah silahkan buka android/app/src/main/res/mipmap-hdpi dan replace icon yang sudah ada dengan icon yang baru, lakukan hal yang sama untuk masing2 folder mipmap dengan resolusi yang berbeda-beda.

