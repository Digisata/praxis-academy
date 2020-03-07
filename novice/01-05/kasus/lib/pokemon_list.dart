// To parse this JSON data, do
//
//     final pokemonList = pokemonListFromJson(jsonString);

import 'dart:convert';

class PokemonList {
    final int count;
    final String next;
    final dynamic previous;
    final List<Pokemon> results;

    PokemonList({
        this.count,
        this.next,
        this.previous,
        this.results,
    });

    factory PokemonList.fromJson(String str) => PokemonList.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PokemonList.fromMap(Map<String, dynamic> json) => PokemonList(
        count: json["count"] == null ? null : json["count"],
        next: json["next"] == null ? null : json["next"],
        previous: json["previous"],
        results: json["results"] == null ? null : List<Pokemon>.from(json["results"].map((x) => Pokemon.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "count": count == null ? null : count,
        "next": next == null ? null : next,
        "previous": previous,
        "results": results == null ? null : List<dynamic>.from(results.map((x) => x.toMap())),
    };
}

class Pokemon {
    final String name;
    final String url;

    Pokemon({
        this.name,
        this.url,
    });

    factory Pokemon.fromJson(String str) => Pokemon.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Pokemon.fromMap(Map<String, dynamic> json) => Pokemon(
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
    );

    Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "url": url == null ? null : url,
    };
}
