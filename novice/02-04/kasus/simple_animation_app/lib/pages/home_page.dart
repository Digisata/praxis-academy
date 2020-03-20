import 'dart:math';

import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatelessWidget {
  static final List<String> _names = [
    'Bromo',
    'Toba',
    'Parangtriris',
    'Pantai Kuta',
    'Waduk Sermo'
  ];
  static final List<String> _locations = [
    'Pasuruan',
    'Sumatra Utara',
    'Bantul',
    'Bali',
    'Gunungkidul'
  ];
  static final List<String> _images = [
    'bromo.jpg',
    'toba.jpg',
    'parangtritis.jpg',
    'kuta.jpg',
    'sermo.jpg'
  ];
  static final List<int> _starts = [98, 99, 97, 99, 96];
  static int randomNumber;

  final touristAttraction = List<TouristAttraction>.generate(
      20,
      (i) => TouristAttraction(
          '$i',
          '${_names[_generateRandomNumber()]}',
          '${_locations[randomNumber]}',
          '${_names[randomNumber]} merupakan sebuah destinasi wisata yang terdapat di ${_locations[randomNumber]} dan bla bla blaa',
          '${_images[randomNumber]}',
          _starts[randomNumber]));

  static int _generateRandomNumber() {
    randomNumber = Random().nextInt(5);
    return randomNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tempat Wisata'),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(right: 5, left: 5),
        itemCount: touristAttraction.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.all(5),
            leading: Hero(
              tag: '${touristAttraction[index].id}',
              child: Image.asset(
                'images/${touristAttraction[index].image}',
                width: 70,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(touristAttraction[index].name),
            subtitle: Text(touristAttraction[index].description, maxLines: 1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(),
                      settings: RouteSettings(
                        arguments: touristAttraction[index],
                      )));
            },
          );
        },
      ),
    );
  }
}

class TouristAttraction {
  final String id, name, location, description, image;
  final int stars;

  const TouristAttraction(this.id, this.name, this.location, this.description,
      this.image, this.stars);
}
