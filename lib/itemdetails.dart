import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget{
  @override
  ItemDetails1 createState() => ItemDetails1();

}
class ItemDetails1 extends State<ItemDetails>{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   // appBar: AppBar(
   //   backgroundColor: Color(0x0000000),
   //
   // ),
   body: Container(
      color: Colors.black,
     child: Padding(
       padding: const EdgeInsets.only(top: 30),
       child: Column(
         children: [
           Container(
             height: 400,
             child: Stack(
               children: <Widget>[
                 Container(

                   decoration: BoxDecoration(

                       image: DecorationImage(
                           image: AssetImage('assets/images/shoe1.png'),
                           fit: BoxFit.fitHeight
                       ),
                       color: Colors.green,
                       // borderRadius: BorderRadius.all(Radius.circular(20))
                   ),
                   alignment: Alignment.center,

                 ),
                 Align(
                   alignment: Alignment.bottomRight,
                   child: Container(
                     height: MediaQuery.of(context).size.height,
                     width: MediaQuery.of(context).size.width,
                     decoration: new BoxDecoration(
                       gradient: new LinearGradient(colors: [Color(0x000000), Colors.black],
                           begin: const FractionalOffset(1,0),
                           end: const FractionalOffset(1, 1),
                           stops: [0.3,1],
                           tileMode: TileMode.clamp
                       ),
                     ),
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 10),
                   child: Align(
                       alignment: Alignment.topLeft,
                       child: IconButton(
                         onPressed: ()
                         {
                           Navigator.pop(context);
                         },
                         icon: Icon(Icons.arrow_back,size: 40,color: Colors.white,),
                       )
                   ),

                 ),
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: Container(
                     width: MediaQuery.of(context).size.width,
                     height: MediaQuery.of(context).size.height/6,
                     child: Column(
                       children: [
                         Container(
                           width: MediaQuery.of(context).size.width,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: Text("Nike Joyride",style: TextStyle(
                               color: Colors.white,
                               fontSize: 25
                             ) ,),
                           ),
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 10,top: 10),
                             ///////TExt taken from dummmy text website//
                             child: Text("Text taken from dummmy sites for test ",style: TextStyle(
                               color: Colors.white,
                               fontSize: 15
                             ) ,),
                           ),
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 10,top: 10,right: 30),
                             ///////TExt taken from dummmy text website//
                             child: Text("rambled it to make a type specimen book. It has survived not only five centuries, ",style: TextStyle(
                               color: Colors.white,
                               fontSize: 12
                             ) ,),
                           ),
                         ),


                       ],
                     ),

                   ),
                 ),
               ],
             ),
           ),
           Container(
             color: Colors.black,
             height: MediaQuery.of(context).size.height/2.4,
             width: MediaQuery.of(context).size.width,
             child: Column(
               children: [
                 Container(
                   child: Padding(
                     padding: const EdgeInsets.only(left: 20,right: 20),
                     child: Row(
                       children: [

                         IconButton(
                           icon: Icon(Icons.thumb_up,size: 40,color: Colors.green,),
                         ),
                         IconButton(
                           icon: Icon(Icons.thumb_down,size: 40,color: Colors.white,),
                         )

                       ],
                     ),
                   ),
                 ),

                 Container(
                   height: MediaQuery.of(context).size.height/3,
                   width: MediaQuery.of(context).size.width,
                   child: Stack(
                     children: <Widget>[
                       Container(

                         decoration: BoxDecoration(

                             image: DecorationImage(
                               image: AssetImage('assets/images/shoe3.png'),
                               fit: BoxFit.fitHeight,
                             ),
                             color: Colors.orange,
                             borderRadius: BorderRadius.all(Radius.circular(20))
                         ),
                         alignment: Alignment.center,

                       ),
                       Align(
                         alignment: Alignment.center,
                         child: Icon(Icons.play_circle_fill,size: 50,)
                       ),

                       Padding(
                         padding: const EdgeInsets.only(top: 18,right: 20),
                         child: Align(
                             alignment: Alignment.topRight,
                             child:  Image.asset('assets/images/videologo.png'),
                         ),
                       ),
                     ],
                   ),
                 )
               ],
             ),
           )
         ],
       ),
     ),
   ),
 );
  }

}