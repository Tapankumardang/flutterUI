import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:assignment/itemdetails.dart';

class Home extends StatefulWidget {
  // This widget is the root of your application.
  @override
  Home1 createState() =>Home1();
}

class Home1 extends State<Home> {

  final items = [
    ListTile(
      title: Text('Item 1',style: TextStyle(
        color: Colors.white
      ),),
    ),
    ListTile(
      title: Text('Item 2',style: TextStyle(
        color: Colors.white
      ),),
    ),
    ListTile(
      title: Text('Item 3'),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height/1,
                decoration: new BoxDecoration(
                gradient: new LinearGradient(colors: [Colors.indigoAccent, Colors.black],
                begin: const FractionalOffset(1.6, 0.0),
                end: const FractionalOffset(0.0, 0.9),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
                ),
                ),
                // height: 200,
                // color: Color(0xFF00007B),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50,bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 100,
                          height: 100,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/men1.png'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("David",
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70,top: 5),
                        child: Column(
                          children: [
                            Text("Point",
                            style: TextStyle(
                              color: Colors.white,
                            ),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("40",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),),
                            ),
                          ],
                        ),
                      ),
                     GestureDetector(
                       onTap: (){
                         print("pressed on logo");
                         _pressedOnlogo();
                       },
                       child: Container(
                         width: 100,
                        height: 100,
                        child: SfRadialGauge(axes: <RadialAxis>[
                          // Create primary radial axis
                          RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            showLabels: false,
                            showTicks: false,
                            startAngle: 270,
                            endAngle: 270,
                            radiusFactor: 1,
                            axisLineStyle: AxisLineStyle(
                              thickness: 0.2,
                              color: const Color.fromARGB(30, 0, 169, 181),
                              thicknessUnit: GaugeSizeUnit.factor,
                            ),
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  positionFactor: 0.1,
                                  angle: 90,
                                  // widget: Text(
                                  //   20.toStringAsFixed(0) + ' / 100',
                                  //   style: TextStyle(fontSize: 11),
                                  // )
                                  widget: Container(
                                    width: 40,
                                    height: 40,

                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/logo.png'),
                                          fit: BoxFit.fill
                                      ),
                                    ),

                                  ),
                              )
                            ],
                            pointers: <GaugePointer>[
                              RangePointer(
                                  value: 40,//progress value of loadingbar
                                  width: 0.1,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  cornerStyle: CornerStyle.startCurve,
                                  gradient: const SweepGradient(colors: <Color>[
                                    Color(0xFF00a9b5),
                                    Color(0xFFa4edeb)
                                  ], stops: <double>[
                                    0.25,
                                    0.75
                                  ])),
                              MarkerPointer(
                                value: 40,//progress value loadingbar
                                markerType: MarkerType.circle,
                                color: const Color(0xFF87e8e8),
                              )
                            ],
                          ),

                        ]),
                       ),
                     )

                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.3,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 30),
                    child: Row(
                      children: [
                        Container(
                          child: Text("NEWS",
                            style: TextStyle(
                              color: Colors.white
                            ) ,),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 550,
                   //////////////////////////////implementing List view///
                   child:  ListView(
                     scrollDirection: Axis.horizontal,
                     children: [


                       ///////////////////////////Items in the list////////////
                       GestureDetector(
                         onTap: (){
                           print("home screen item pressed");
                           Navigator.push(context, _Routeitemdetails());
                         },
                         child: Padding(
                           padding: const EdgeInsets.only(top: 30),
                           child: Column(
                             children: [
                               Container(
                                 width: 300,
                                 height: 500,
                                 // color: Colors.indigo,
                                 decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadius.all(Radius.circular(30.0)),
                                   color: Color(0xFF192876)
                                 ),
                                 child: Column(
                                   children: [
                                     Container(
                                       height: 420,
                                       width: 300,
                                       decoration: BoxDecoration(
                                           borderRadius:
                                           BorderRadius.only(topRight:Radius.circular(30.0),topLeft: Radius.circular(30.0)),
                                         image: DecorationImage(
                                           image: AssetImage('assets/images/shoe2.png'),
                                           fit: BoxFit.fitHeight
                                         )
                                       ),
                                     ),
                                     Container(
                                       width: MediaQuery.of(context).size.width,
                                       child: Column(
                                         children: [
                                           Row(
                                             children: [
                                               Padding(
                                                 padding: const EdgeInsets.only(top: 8,left: 30),
                                                 child: Text("Nike Joyride",style: TextStyle(
                                                     color: Colors.white
                                                 ),),
                                               ),
                                             ],
                                           ),
                                           Row(
                                             children: [
                                               Padding(
                                                 padding: const EdgeInsets.only(top: 8,left: 30),
                                                 child: Text("Clickable Item Click TO Check",style: TextStyle(
                                                     color: Colors.red
                                                 ),),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               ),

                             ],
                           ),
                         ),
                       ),


                       Padding(
                         padding: const EdgeInsets.only(top: 30,left: 30),
                         child: Column(
                           children: [
                             Container(
                               width: 300,
                               height: 500,
                               // color: Colors.indigo,
                               decoration: BoxDecoration(
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(30.0)),
                                 color: Color(0xFF192876)
                               ),
                               child: Column(
                                 children: [
                                   Container(
                                     height: 420,
                                     width: 300,
                                     decoration: BoxDecoration(
                                         borderRadius:
                                         BorderRadius.only(topRight:Radius.circular(30.0),topLeft: Radius.circular(30.0)),
                                       image: DecorationImage(
                                         image: AssetImage('assets/images/shoe1.png'),
                                         fit: BoxFit.fitHeight
                                       )
                                     ),
                                   ),
                                   Container(
                                     width: MediaQuery.of(context).size.width,
                                     child: Column(
                                       children: [
                                         Row(
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.only(top: 8,left: 30),
                                               child: Text("Nike Joyride",style: TextStyle(
                                                   color: Colors.white
                                               ),),
                                             ),
                                           ],
                                         ),
                                         Row(
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.only(top: 8,left: 30),
                                               child: Text("Lorem ipsum dolor sit amed, consectetur",style: TextStyle(
                                                   color: Colors.white
                                               ),),
                                             ),
                                           ],
                                         ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),

                           ],
                         ),
                       ),


                       Padding(
                         padding: const EdgeInsets.only(top: 30,left: 30),
                         child: Column(
                           children: [
                             Container(
                               width: 300,
                               height: 500,
                               // color: Colors.indigo,
                               decoration: BoxDecoration(
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(30.0)),
                                 color: Color(0xFF192876)
                               ),
                               child: Column(
                                 children: [
                                   Container(
                                     height: 420,
                                     width: 300,
                                     decoration: BoxDecoration(
                                         borderRadius:
                                         BorderRadius.only(topRight:Radius.circular(30.0),topLeft: Radius.circular(30.0)),
                                       image: DecorationImage(
                                         image: AssetImage('assets/images/shoe3.png'),
                                         fit: BoxFit.fitHeight
                                       )
                                     ),
                                   ),
                                   Container(
                                     width: MediaQuery.of(context).size.width,
                                     child: Column(
                                       children: [
                                         Row(
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.only(top: 8,left: 30),
                                               child: Text("Nike Joyride",style: TextStyle(
                                                   color: Colors.white
                                               ),),
                                             ),
                                           ],
                                         ),
                                         Row(
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.only(top: 8,left: 30),
                                               child: Text("Lorem ipsum dolor sit amed, consectetur",style: TextStyle(
                                                   color: Colors.white
                                               ),),
                                             ),
                                           ],
                                         ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),

                           ],
                         ),
                       ),
                     ],
                   )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  _pressedOnlogo() {
    return showDialog(

        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Colors.deepPurple,
              content: Container(
                  height: 500,
                  width: 200,

                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(

                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,

                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/logo.png'),
                                          fit: BoxFit.fill
                                      ),

                                    ),

                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 120),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Text("100",style: TextStyle(color: Colors.white),),
                                          Text("Points",style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Container(
                                child: Text("Lorem Ipsum is simply dummy text of the printing ",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,

                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/logo.png'),
                                          fit: BoxFit.fill
                                      ),

                                    ),

                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 120),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Text("500",style: TextStyle(color: Colors.white),),
                                          Text("Points",style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Container(
                                child: Text("Lorem Ipsum is simply dummy text of the printing ",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,

                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/logo.png'),
                                          fit: BoxFit.fill
                                      ),

                                    ),

                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 120),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Text("1K",style: TextStyle(color: Colors.white),),
                                          Text("Points",style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Container(
                                child: Text("Lorem Ipsum is simply dummy text of the printing ",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,

                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/logo.png'),
                                          fit: BoxFit.fill
                                      ),

                                    ),

                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 120),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Text("5K",style: TextStyle(color: Colors.white),),
                                          Text("Points",style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Container(
                                child: Text("Lorem Ipsum is simply dummy text of the printing ",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,

                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/logo.png'),
                                          fit: BoxFit.fill
                                      ),

                                    ),

                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 120),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Text("10K",style: TextStyle(color: Colors.white),),
                                          Text("Points",style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Container(
                                child: Text("Lorem Ipsum is simply dummy text of the printing ",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          ),
                        ),
                      ),


                    ],
                  )
              )

          );
        });
  }
  Route _Routeitemdetails() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ItemDetails(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}