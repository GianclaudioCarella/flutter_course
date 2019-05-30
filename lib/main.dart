import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];

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
                    setState(() {
                      _products.add('Advanced Food Tester');
                    });
                  },
                  child: Text('Add Product'),
                ),
              ),
              Column(
                children: _products
                    .map((element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/food.jpg'),
                              Text(element),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          )),
    ); // the core widget (principal)
  }
}
