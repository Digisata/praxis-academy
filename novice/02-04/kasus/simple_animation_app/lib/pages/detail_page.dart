import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(DetailPage());

class FavoriteWidget extends StatefulWidget {
  FavoriteWidget(this.favoriteCount);

  int favoriteCount;

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState(favoriteCount);
}

class _FavoriteWidgetState extends State<FavoriteWidget>
    with SingleTickerProviderStateMixin {
  _FavoriteWidgetState(this._favoriteCount);

  AnimationController _animationController;
  bool _isFavorited = true;
  int _favoriteCount;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: AnimatedIcon(
              icon: AnimatedIcons.event_add,
              progress: _animationController,
              color: Colors.red,
            ),
            // icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        )
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount--;
        _isFavorited = !_isFavorited;
        _animationController.forward();
      } else {
        _favoriteCount++;
        _isFavorited = !_isFavorited;
        _animationController.reverse();
      }
    });
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TouristAttraction touristAttraction =
        ModalRoute.of(context).settings.arguments;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    touristAttraction.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  touristAttraction.location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          FavoriteWidget(touristAttraction.stars),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        touristAttraction.description,
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detail Wisata',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Detail Wisata'),
          centerTitle: true,
          elevation: 10,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView(
          children: <Widget>[
            Hero(
              tag: '${touristAttraction.id}',
              child: Image.asset(
                'images/${touristAttraction.image}',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
