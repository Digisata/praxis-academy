Penjelasan alur kerja program:

1. Pertama-tama body main akan dieksekusi dan baris pertama akan dieksekusi oleh compiler, yaitu membuat object baru dari class GenericClass yang bertipe int dengan melempar argument bernilai 20.
enericClass<int> iObject = GenericClass<int>(20);

2. Kemudian pada class GenericClass eksekusi program akan berlanjut ke constructor klas dimana argument yang di passing tadi akan di inisialisasikan ke dalam variabel object.
GenericClass(T object) {
  this.object = object;
}

3. Setelah itu eksekusi program akan kembali ke main method dan berlanjut ke line pemanggilan method getObject yang ada di class GenericClass dan menampung nilai tersebut kedalam variabel value.
int value = iObject.getObject();

4. Lanjut, setelah itu compiler akan mengeksekusi line dimana method showType dipanggil, oleh karena itu eksekusi program akan menuju ke showType yang ada di class GenericClass kemudian mengeksekusi block body nya.
iObject.showType();
void showType() {
  print('Type of T is ${T}');
}

5. Jika sudah semua block body dari method showType tereksekusi maka compiler akan kembali lagi ke main method dan terakhir akan mencetak nilai yang sebelumnya sudah kita dapatkan dari proses sebelumnya.
print('The value is: $value');
