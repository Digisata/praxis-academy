import 'package:flutter/material.dart';

void main() => runApp(NavigationApp());

class NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
        ExtractArgumentsPage.routeName: (context) => ExtractArgumentsPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsPage.routeName) {
          final PageArguments args = settings.arguments;
          return MaterialPageRoute(builder: (context) {
            return PassArgumentsPage(title: args.title, message: args.message);
          });
        }
      },
      title: 'Navigation App',
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Column(
            children: <Widget>[
              Image.network(
                'https://picsum.photos/250?image=9',
              ),
              FlatButton(
                color: Colors.orange,
                child: Text('Using Push Named'),
                onPressed: () {
                  Navigator.pushNamed(context, '/detail');
                },
              ),
              FlatButton(
                color: Colors.deepOrange,
                child: Text('With arguments'),
                onPressed: () {
                  Navigator.pushNamed(context, ExtractArgumentsPage.routeName,
                      arguments: PageArguments(
                          'Argument Page', 'This is the extracted message'));
                },
              ),
              FlatButton(
                color: Colors.yellow,
                child: Text('With onGenerateRoute'),
                onPressed: () {
                  Navigator.pushNamed(context, PassArgumentsPage.routeName,
                      arguments: PageArguments('Argument onGenerateRoute',
                          'This is the extracted message from onGenerateRoute function'));
                },
              ),
              SelectionButton(),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage();
          }));
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://picsum.photos/250?image=9',
                ),
                FlatButton(
                  color: Colors.orange,
                  child: Text('Using Pop'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Choose an option'),
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      color: Colors.green,
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectionPage()));

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(result)));
  }
}

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Page'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.green,
              child: Text('Ohh yeah'),
              onPressed: () {
                Navigator.pop(context, 'Ohh yeah');
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text('Ohh noo'),
              onPressed: () {
                Navigator.pop(context, 'Ohh noo');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ExtractArgumentsPage extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final PageArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(args.message),
            FlatButton(
              color: Colors.deepOrange,
              child: Text('Using Pop'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PassArgumentsPage extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title, message;

  const PassArgumentsPage({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            FlatButton(
              color: Colors.yellow,
              child: Text('Using Pop'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageArguments {
  final String title, message;

  PageArguments(this.title, this.message);
}
