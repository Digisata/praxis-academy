Penjelasan singkat aplikasi:

1. Aplikasi stateless_widgets ini menggunakan MaterialApp widget sebagai parent widgetnya. Pada MaterialApp widget terdapat bermacam-macam property, salah satu diantaranya yaitu home dimana pada aplikasi ini property home nya akan memanggil class MyStatelessWidget yang mana class tersebut meng extends class StatelessWidget.

runApp(MaterialApp( // parent widget
      title: 'My stateless widget',
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(), // pemanggilan class MyStateless Widget
    ));

2. Pada class MyStatelessWidget terdapat widget build yang me return scaffold widget, di dalam scaffold widget juga terdapat bermacam-macam property diantaranya yaitu appBar dan body yang pada aplikasi ini property appBar memiliki property title yang berisi widget text yang nantinya nilai dari widget text inilah yang akan ditampilkan pada AppBar aplikasi. Kemudian untuk property body yang berisi pembungkus berupa widget container, di container sendiri memiliki property padding dan child. Untuk property child pada widget container berisi widget column yang didalamnya terdapat property crossAxisAlignment yang berguna untuk menata item2 yang ada didalamnya secara berlawanan arah atau secara horizontal. Di dalam column juga terdapat property children yang berisi widget-widget yang mana pada palikasi ini widget-widget tersebut didapat dari hasil pemanggilan class MyCard.

class MyStatelessWidget extends StatelessWidget { // Class MyStatelessWidget
  @override
  Widget build(BuildContext context) { // widget build
    return Scaffold( 
      appBar: AppBar(
        title: Text('Stateless Widget'), // akan di tampilkan di appbar ketika aplikasi berjalan
      ),
      body: Container( // pembungkus atau wrapper widget bernama Container
        padding: const EdgeInsets.all(20), // property padding
        child: Column( // widget Column yang bisa menampung berbagai widget-widget di dalamnya
          crossAxisAlignment: CrossAxisAlignment.stretch, // menata item-item secara horizontal
          children: <Widget>[
            MyCard( // Class MyCard
              title: Text( // argumnet yang berupa widget Text untuk parameter title 
                'I love You',
                style: TextStyle(fontSize: 20),
              ),
              icon: Icon( // argumnet yang berupa widget Icon untuk parameter icon
                Icons.favorite,
                size: 40,
                color: Colors.redAccent,
              ),
            ),

3. Di dalam class MyCard sendiri terdapat parameter yang menerima nilai berupa widget dan menyimpan nilai dari parameter tersebut ke dalam local variable dengan menggunakan constructor. Didalam class MyCard juga terdapat widget build yang mereturn Container yang didalamnya terdapat property padding dan child, kemudian property child yang berisi widget card memiliki child lagi yang berisi container juga. Didalam container ini terdapat property padding dan child, child dari widget container ini berisi widget column, nah di dalam widget column ini terdapat property children yang didalamnya berisi widget title dan icon yang nilainuya di dapat dari parameter class MyCard dan disimpan di local variable.

class MyCard extends StatelessWidget { // class MyCard meng extends StatelessWidget
  final Widget title; // local variable yang bertipe widget
  final Widget icon;

  MyCard({this.title, this.icon}); // constructor dari class MyCard

  @override
  Widget build(BuildContext context) { // build widget
    return Container( // container sebagai pembungkus
      padding: const EdgeInsets.only(bottom: 20), // property padding
      child: Card( // widget card
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              this.title, // widget title yang berisi widget text
              this.icon, // widget icon yang berisi widget icon
            ],
          ),
        ),
      ),
    );
  }
}