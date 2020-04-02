import 'dart:io';
import 'package:kasus/pokemon_repository.dart';
import 'pokemon_repository.dart';

Future<void> main() async {
  var pokemons = await PokemonRepository().fetchPokemonList();
  File file = File(
      '/home/hanif/Documents/praxis-academy/novice/01-05/kasus/lib/pokemon-lists.txt');
  List<String> writeLines = [];
  for (int i = 0; i < pokemons.results.length; i++) {
    writeLines.add(pokemons.results[i].name);
  }

  file.writeAsStringSync(writeLines.toString());
}
