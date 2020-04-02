import 'pokemon_list.dart';
import 'package:http/http.dart' as http;

class PokemonRepository {

  Future<PokemonList> fetchPokemonList() async {
    var url = 'https://pokeapi.co/api/v2/pokemon';
    var respon = await http.get(url);
    var pokemonList = PokemonList.fromJson(respon.body);
    return pokemonList;
    
  }
  
}