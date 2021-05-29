import 'package:flutter/material.dart';
import 'package:assignment/loginScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
    color: const Color(0xFF1A237E),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);


  // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Route _RouteLogin() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
backgroundColor: const Color(0xFF000000),

      ),
      body: GestureDetector(
        onTap: (){
        // _RouteLogin();
          Navigator.push(context, _RouteLogin());
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF000000),

            // color: Colors.indigo
          ),
         child: Center(
           child: Container(
              height: 300,
             width: 300,
             decoration: BoxDecoration(
                 color:  Color(0xFF0000),
                 border: Border.all(color: Colors.indigoAccent,width: 1),
               borderRadius: BorderRadius.all(Radius.circular(1000))
               // color: Colors.indigo
             ),
             child: new Image.asset('assets/images/logo.png'),
           ),
         ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
