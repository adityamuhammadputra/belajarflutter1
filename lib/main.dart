import 'package:flutter/material.dart';
import './hal_hp.dart' as hp;
import './hal_komputer.dart' as  komputer;
import './hal_bintang.dart' as  bintang;
import './hal_headset.dart' as  headset;

void main() {
  runApp(new MaterialApp(
    title: "Adityamuhammadputra",
    home: new HalamanSatu(),
    routes: <String, WidgetBuilder>{
      '/HalamanSatu' : (BuildContext context) => new HalamanSatu(),
      '/HalDua' :(BuildContext context) => new HalDua(),
      '/HalTiga' :(BuildContext context) => new HalTiga(),
    }
  ));
}




class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: new AppBar(
        backgroundColor: Colors.red[1000],
        // leading: new Icon(Icons.home),
        title: new Center(
          child: new Text('hello akhirat'),
        ), 
        actions: <Widget>[
          new Icon(Icons.headset )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Hello Akhirat'),
              accountEmail: new Text('adityamuhammadputra@gmail.com'),
              currentAccountPicture: new CircleAvatar(backgroundImage: new NetworkImage('https://candutekno.com/wp-content/uploads/2019/06/pc-4-jutaan.jpg'),),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage('https://img-k.okeinfo.net/content/2017/09/09/481/1772517/ternyata-olahraga-diving-terjun-payung-berbahaya-bagi-kesehatan-pilot-simak-penjelasannya-AEs3ktW6Hg.jpg'),
                  fit: BoxFit.cover
                ),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  // onTap: ()=>gantiUser(),
                  child: new CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: Text('U'),
                    ),
                )
            // new Tab(icon: new Icon(Icons.computer), text: "Komputer",),

              ],
              // currentAccountPicture: new Image(image: new NetworkImage('https://candutekno.com/wp-content/uploads/2019/06/pc-4-jutaan.jpg'),),
            ),
            new ListTile(
              title: new Text('Setting'),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Column (
          children: <Widget>[
            new Icon(Icons.sentiment_very_dissatisfied, size: 100),
            new Row(
              children: <Widget>[
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.red),
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.blue),
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.red),
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.blue),
              ],
            ),
            new IconButton(
              icon: new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.green[300]),
              onPressed: (){
                Navigator.pushNamed(context, '/HalTiga');
              },
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
                // padding : new EdgeInsets.all(10.0),
              children:<Widget>[
                MyCard(icon:Icons.home, text: 'Home', warnaIcon:Colors.blue),
                MyCard(icon:Icons.sim_card, text: 'gsm', warnaIcon:Colors.red)
              ] 
            )
          ],
        ),
      ),
    );
  }
}



class MyCard extends StatelessWidget {
  // const MyCard({Key key}) : super(key: key);
MyCard({this.icon, this.text, this.warnaIcon});
final IconData icon;
final String text;
final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: new EdgeInsets.all(5),
      child: new Card(
        child: 
          new Column(
            children: <Widget>[
              new Icon(icon, size: 50, color: warnaIcon,),
              new Text(text,style: new TextStyle(fontSize: 20.0),),
              new IconButton(
                icon: new Icon(Icons.headset),
                onPressed: (){
                  Navigator.pushNamed(context, '/HalDua');
                },
              ) 

            ],
          )
      )
    );
  }
}

class HalDua extends StatelessWidget {
  // const HalDua({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Halaman dua'),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.backspace),
          onPressed: (){
            Navigator.pushNamed(context, '/HalamanSatu');
          },
        ),
      ),
    );
  }
}

// class HalTiga extends StatelessWidget {
//   // const HalTiga({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//           backgroundColor: Colors.red,
//           title: new Text('Halaman Tiga'),
//           bottom: new TabBar(
             
//           ),
//         )
//     );
//   }
// }

class HalTiga extends StatefulWidget {
  @override
  _HalTigaState createState() => _HalTigaState();
}

class _HalTigaState extends State<HalTiga> with SingleTickerProviderStateMixin {

  TabController controller;

  @override

  void initState() { 
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() { 
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text('Daftar Menu'),
        // bottom: new TabBar(
        //     controller: controller,
        //     tabs: <Widget>[
        //       new Tab(icon: new Icon(Icons.computer), text: "Komputer",),
        //       new Tab(icon: new Icon(Icons.phone_android), text: "Henpon",),
        //       new Tab(icon: new Icon(Icons.headset),),
        //       new Tab(icon: new Icon(Icons.star),),
        //     ],
        // ),
      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new hp.Henpon(),
          new headset.Headset(),
          new bintang.Bintang(),

        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.red,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer), text: "Komputer",),
            new Tab(icon: new Icon(Icons.phone_android), text: "Henpon",),
            new Tab(icon: new Icon(Icons.headset),),
            new Tab(icon: new Icon(Icons.star),),
          ],
        ),
      ),

    );
  }
}
