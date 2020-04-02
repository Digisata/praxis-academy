Penjelasan singkat aplikasi:

1. Ketika pertamakali menjalankan aplikasi, maka secara otomatis halaman HomePage akan di tampilkan, karena halaman HomePage ini merupakan initialRoute dengan key nya yaitu '/'. Kemudian pada halaman HomePage terdapat sebarus text dan juga sebuah button yang terdapat pada tengah-tengah layar. Jika button ini di click maka akan menampilkan halaman baru yaitu halaman SignUpPage.

initialRoute: '/', // halaman dengan kata kunci '/' akan pertama kali ditampilkan
routes: {
'/': (BuildContext context) => HomePage(), // kata kunci '/'bernilai HomePage()
'/signup': (BuildContext context) => SignUpPage(), // key '/signup' bernilai SignUpPage()
},

Text(
    'Home Page', // text yang ada pada HomePage
    style: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        fontSize: 20),
),
FlatButton(
    color: Colors.grey,
    onPressed: () {
        Navigator.pushNamed(context, '/signup'); // jika tombol di click maka akan diarahkan ke halaman SignUpPage
    },
    child: Text('Click me')),

2. Kemudian pada halaman SignUpPage terdapat sebuah condition dimana condition inilah yang akan menentukan halaman mana yang akan di tampilkan. karena pada property initialRoute nya bernilai 'signup/personal_info' maka halaman yang pertamakali dibuka ketika class SignUpPage dipanggil adalah halaman CollectPersonalInfoPage jika bukan 'signup/personal_info' maka 'signup/chose_credentials' yang akan dibuka yang merujuk pada halaman ChooseCredentialsPage.

class SignUpPage extends StatelessWidget { // class SignUpPage
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'signup/personal_info', // halaman awal yang akan dibuka
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'signup/personal_info': // akan bernilai true dan halaman CollectPersonalInfoPage akan di tampilkan
            builder = (BuildContext _) => CollectPersonalInfoPage();
            break;
          case 'signup/choose_credentials': // jika case ini bernilai true maka halaman ChooseCredentialsPage lah yang akan dibuka
            builder = (BuildContext _) => ChooseCredentialsPage(
                  onSignupComplete: () {
                    Navigator.of(context).pop();
                  },
                );
            break;
          default: // jika nilai dari settings.name bukan kedunya maka exception akan terjadi
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}