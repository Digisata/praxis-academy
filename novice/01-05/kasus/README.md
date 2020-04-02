Penjelasan singkat cara kerja program:

1. Pertama-tama ketika program dijalankan maka main method akan dipanggil, kemudian pada main method body compiler akan mengeksekusi baris demi baris, di awali dengan pemanggilan method fetchPokemonList yang ada pada class PokemonRepository.

// hasil dari return function nya akan disimpan pada variabel pokemons
var pokemons = await PokemonRepository().fetchPokemonList();

2. Kemudian pada class PokemonRepository tepatnya pada method fetchPokemonList akan terjadi request data menuju API melalui sebuah url yang hasilnya berupa respon JSON yang selanjutnya akan disimpan pada variabel bernama respon.

// url dari sebuah API
var url = 'https://pokeapi.co/api/v2/pokemon';

/* dengan menggunakan library http yang ada pada dart, kita dapat melakukan fetch data dari API menggunakan function berikut, dan mendapatkan return berupa data JSON. Karena method fetchPokemonList terdapat keyword async maka function tersebut adalah asycronous, dan pada snippet code dibawah ini terdapat kata kunci await maka eksekusi program akan ter suspend sejenak sampai fetch data dari API nya selesai. */
var respon = await http.get(url);

3. Setelah mendapatkan respon dari API, respon tersebut akan diolah oleh class PokemonList, sehingga pada akhirnya class tersebut akan mereturn sebuah list yang berisi data yang kita request dari API. setelah mendapatkan data berupa list tersebut maka method fetchPokemontList akan mereturn data tersebut kembali dan disimpan pada variabel pokemons yang ada pada main method.

/* respon yang didapat akan di passing dan diolah oleh method fromJson yang ada pada class PokemonList */
var pokemonList = PokemonList.fromJson(respon.body);

/* jika sudah selesai diolah dan dijadikan sebuah list, maka data list tersebut akan direturn kembali ke main method */
return pokemonList;

4. Lanjut kelangkah selanjutnya yaitu membuat sebuah object baru dari class File bernama file dan menentukan path atau lokasi file baru yang akan kita buat tersebut tersimpan. Dan membuat sebuah list baru yang nantinya akan kita gunakan untuk menampung data dari looping yang akan kita buat.

// membuat instance class
File file = File(
      '/home/hanif/Documents/praxis-academy/novice/01-05/kasus/lib/pokemon-lists.txt');

// membuat sebuah list baru bernama writeLines
List<String> writeLines = [];

5. Nah, kita masuk ke tahap perulangan atau iterasi yang hasil dari setiap iterasinya akan disimpan pada variabel writeLines yang bertipe List<String> dengan menggunakan method add().

/* perulangan yang berfungsi untuk mendapatkan data dari list pokemons dan menyimpan hasilnya di dalam variabel writeLines. Iterasi yang terjadi yaitu sebanyak data yang di dapat dari proses fetching data dari API */
for (int i = 0; i < pokemons.results.length; i++) {
    writeLines.add(pokemons.results[i].name);
}

6. Terakhir kita tinggal menyimpan hasil dari data yang telah kita dapat dari hasil perulangan kedalam sebuah file bernama pokemon-lists.txt yang ada pada direktori yang telah kita tentukan sebelumnya.

file.writeAsStringSync(writeLines.toString());
