Hasil riset profilling menggunakan flutter dev tools:

Sebelum optimasi:
- Permormance overlay pada bagian UI menunjukkan hasil max rate 45.3 ms/frame dengan rata-rata sebesar 13.6 ms/frame, sedangkan pada GPU untuk max rate yaitu 18.6 ms/frame dan rata-rata 8.2 ms/frame.

- Logging pada saat aplikasi di lakukan action hot reload membutuhkan maktu 251 ms dan untuk hot restart yaitu selama 2.024 ms

Setelah optimasi:
- Performance overlay untuk UI hasilnya adalah max rate 50.9 ms/frame sedangkan untuk rata-ratanya yaitu 11.3 ms/frame, dan untuk performa GPU max rate nya sebesar 13.9 ms/frame kemudian rata-rata nya yaitu 7.0 ms/frame

- Logging untuk hot reloadnya adalah 398 ms sedangkan untuk hot restartnya adalah 1.876 ms.

Dari optimasi yang telah dilakukan diantaranya yaitu dengan menerapkan app state (provider) yang sebelumnya menggunakan ephermal state dapat diperoleh hasil pengujian diatas, yang dilakukan menggunakan fasilitas tools yang ada di flutter. Dan dari hasil tersebut dapat dibuat kesimpulan kurang lebih yaitu, untuk max rate baik GPU maupun UI setelah dilakukan optimasi terlihat lebih tinggi dibandingkan sebelum dilakukan optimasi, namun untuk rata-rata GPU dan juga UI nya lebih rendah jika dibandingkan sebelum dilakukan optimasi. Dan untuk waktu hot reload nya lebih pendek sebelum dilakukan optimasi, tetapi setelah dilakukan optimasi walaupun waktu hot reload nya lebih lama dibandingkan sebelumnya, waktu untuk hot restart nya lebih pendek jika dibandingkan sebelum optimasi.