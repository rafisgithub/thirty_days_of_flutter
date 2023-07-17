import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  int days = 30;
  double pi = 3.1416;
  String name = "Rafi Ahmed";
  bool isMale = true;
  num temp = 30.2;
  var day = 1;
  var y = 3.14;
  var x = "This is a varibale.";

  // const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to  $days of flutter by $name."),
        ),
      ),
      drawer: Drawer(

      ),
    );
  }
}
