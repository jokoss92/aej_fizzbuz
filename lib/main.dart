import 'package:flutter/material.dart';

void main() => runApp(App());

//widget App() --> MaterialApp()
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "AEJ Fizz Buzz",
      home: HomePage(),
    );
  }

}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage>{
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHome(i),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

          setState(() {
            i++;
          });
      },
      ),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
    );

  }
}

class BodyHome extends StatelessWidget{

  final int _number;

  BodyHome(this. _number);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(_printFizzBuzz(_number)),
    );
  }

  String _printFizzBuzz(int i){
    String res = "";
    if (i % 15 == 0){
      res = "FizzBuzz - $i";
    } else if (i % 3 == 0){
      res = "buzz - $i";
    } else if (i % 5 == 0){
      res = "fizz - $i";
    } else {
      res = "$i";
    }
    return res;
  }
}

