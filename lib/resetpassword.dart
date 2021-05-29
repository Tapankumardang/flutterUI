import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment/homepage.dart';

class ResetPassword extends StatefulWidget {
  // This widget is the root of your application.
  @override
  ResetPassword1 createState() => ResetPassword1();
}

class ResetPassword1 extends State<ResetPassword> {
  // MyHomePage({Key key, this.title}) : super(key: key);

  // final String title;

  final Reentered_password = TextEditingController();
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
                          child: Text("Reset password?",
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
                child: Text("E-mail address verified! Set a new password",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,),
              ),
            ),


            Center(
              child: Container(
                width: MediaQuery.of(context).size.width/1.3,
                child: Padding(
                  padding: const EdgeInsets.only(top:50),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "NEW PASSWORD",
                      labelStyle: new TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                      labelText: "NEW PASSWORD",
                    ),
                    controller: Password,
                    style: TextStyle(color: Colors.white, fontSize: 20),

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
                      hintText: "RE-ENTER PASSWORD",
                      labelStyle: new TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                      labelText: "RE-ENTER PASSWORD",
                    ),
                    controller: Reentered_password,
                    style: TextStyle(color: Colors.white, fontSize: 20),

                  ),

                ),
              ),
            ),





            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {

                  // Navigator.push(context, _RouteHomepage());
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8,right: 80,left: 80,bottom: 8),
                  child: Text('RESET PASSWORD'),
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
}
