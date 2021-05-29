import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment/homepage.dart';
import 'package:assignment/forgotpassword.dart';

class LoginPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  LoginPage1 createState() => LoginPage1();
}

class LoginPage1 extends State<LoginPage> {
  // MyHomePage({Key key, this.title}) : super(key: key);

  // final String title;

  final Username = TextEditingController();
  final Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF00003B),

          // color: Colors.indigo
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFF0000),
                        border:
                            Border.all(color: Colors.indigoAccent, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(1000))
                        // color: Colors.indigo
                        ),
                    child: new Image.asset('assets/images/logo.png'),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width/1.3,
                child: Padding(
                  padding: const EdgeInsets.only(top:50),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelStyle: new TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                      labelText: "Email",
                    ),
                    controller: Username,
                    style: TextStyle(color: Colors.white, fontSize: 20),

                  ),

                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width/1.3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "password",
                      labelStyle: new TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      labelText: "password",
                    ),
                    controller: Password,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    obscuringCharacter: "*",
                  ),

                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, _Routeforgotpassword());
              },
              child: Container(
                width: MediaQuery.of(context).size.width/1.3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {

                  Navigator.push(context, _RouteHomepage());
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8,right: 80,left: 80,bottom: 8),
                  child: Text('LOG IN'),
                ),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              ),
            ),


            Container(
              width: MediaQuery.of(context).size.width/1.6,
              child: Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: GestureDetector(
                        onTap: ()
                      {
                        //when dont have account
                      },
                      child: Text("Don't have an account?  Create one",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Route _RouteHomepage() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Homepage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
  Route _Routeforgotpassword() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ForgotPassword(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}
