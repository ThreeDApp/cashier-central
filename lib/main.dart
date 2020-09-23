import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'cashiersale.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        '/cashiersale': (BuildContext context) => CashierSale(),
        '/login': (BuildContext context) => Login(),
        '/exit': (BuildContext context) => Exit(),
      },
    );
  }
}

class Exit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ထွက်ရန်'),
      ),
      body: Center(
        child: Container(
          child: Text('Bye Bye'),
        ),
      ),
    );
  }
}
