import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment/homepage.dart';
import 'package:assignment/resetpassword.dart';
import 'package:assignment/loginScreen.dart';

class ForgotPassword extends StatefulWidget {
  // This widget is the root of your application.
  @override
  ForgotPassword1 createState() => ForgotPassword1();
}

class ForgotPassword1 extends State<ForgotPassword> {
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
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF0000),
                        border:
                            Border.all(color: Colors.indigoAccent, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(1000))
                        // color: Colors.indigo
                        ),
                    child: new Image.asset('assets/images/logo.png',scale: 3,),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 50,top: 50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back,color: Colors.white,),
                          ),
                        ),
                        Container(
                          child: Text("Forgot password?",
                            style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),
            ),

            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 50,right: 50,top: 20),
                child: Text("Give us your registered email address and we'll send you link to reset your password",
                style: TextStyle(color: Colors.white),),
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





            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ElevatedButton(
                onPressed: () {

                  Navigator.push(context, _RouteResetPassword());
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8,right: 80,left: 80,bottom: 8),
                  child: Text('SEND'),
                ),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              ),
            ),


            Container(
              width: MediaQuery.of(context).size.width/1.6,
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    // Navigator.push(context, _Routeloginpage());
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text("Have an account? Log in",
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
  Route _RouteResetPassword() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ResetPassword(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}
