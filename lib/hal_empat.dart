import 'package:flutter/material.dart';

class HalEmpat extends StatelessWidget {
  // const HalEmpat({Key key}) : super(key: key);
  final List<String> data;
  HalEmpat({this.data});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Halaman Empat'),
      ),
      body:  new Container(
          child: new ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index){
              return new ListTile(
                leading: new Icon(Icons.widgets),
                title: new Text("${data[index]}"),
              );
            },
          )
        ),
    );
  }
}