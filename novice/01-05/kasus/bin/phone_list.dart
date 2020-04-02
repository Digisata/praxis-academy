// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class PhoneList {
    final bool status;
    final List<Datum> results;

    PhoneList({
        @required this.status,
        @required this.results,
    });

    factory PhoneList.fromJson(String str) => PhoneList.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PhoneList.fromMap(Map<String, dynamic> json) => PhoneList(
        status: json["status"],
        results: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "data": List<dynamic>.from(results.map((x) => x.toMap())),
    };
}

class Datum {
    final String nama;
    final int harga;
    final String deskripsi;
    final String image;
    final int star;

    Datum({
        @required this.nama,
        @required this.harga,
        @required this.deskripsi,
        @required this.image,
        @required this.star,
    });

    factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        nama: json["nama"],
        harga: json["harga"],
        deskripsi: json["deskripsi"],
        image: json["image"],
        star: json["star"],
    );

    Map<String, dynamic> toMap() => {
        "nama": nama,
        "harga": harga,
        "deskripsi": deskripsi,
        "image": image,
        "star": star,
    };
}
