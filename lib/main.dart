import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override // to make clear that the next widget overrides the statelesswidget
  Widget build(BuildContext context) {
    // all widgets needs a constructor to drawing on the screen
    return MaterialApp(
      home: Scaffold(
          // the page widget
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Add Product'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text('Food Paradise'),
                  ],
                ),
              ),
            ],
          )),
    ); // the core widget (principal)
  }
}
