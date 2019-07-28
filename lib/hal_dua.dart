import 'package:flutter/material.dart';

class HalDua extends StatelessWidget {
  // const HalDua({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ListView'),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: new ListView(
          children: <Widget>[
            new ListDatanya(gambar: "https://candutekno.com/wp-content/uploads/2019/06/pc-4-jutaan.jpg", judul: 'Komputer1',),
            new ListDatanya(gambar: "https://candutekno.com/wp-content/uploads/2019/06/pc-4-jutaan.jpg", judul: 'Komputer1',),
            new ListDatanya(gambar: "https://candutekno.com/wp-content/uploads/2019/06/pc-4-jutaan.jpg", judul: 'Komputer1',),
            new ListDatanya(gambar: "https://candutekno.com/wp-content/uploads/2019/06/pc-4-jutaan.jpg", judul: 'Komputer2',),
            new ListDatanya(gambar: "https://candutekno.com/wp-content/uploads/2019/06/pc-4-jutaan.jpg", judul: 'Komputer3',),
          ],
        ),
      ),
    );
  }
}


class ListDatanya extends StatelessWidget {
  // const ListDatanya({Key key}) : super(key: key);
  ListDatanya({this.gambar, this.judul});
  final String gambar;
  final String judul;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(image: new NetworkImage(gambar), width: 100,),
            new Container(
              padding: new EdgeInsets.all(20),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                     new Text(judul, style: new TextStyle(fontSize: 20),),
                     new Column(
                       children: <Widget>[
                         new Text('Ini deskripsinya Ini deskripsinyaa'),
                       ],
                     )
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 