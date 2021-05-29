import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment/home.dart';
import 'package:assignment/qrCode.dart';
import 'package:assignment/ranking.dart';
import 'package:assignment/shopScreen.dart';


class Homepage extends StatefulWidget{
  @override

  Homepage1 createState() => Homepage1();

}
class Homepage1 extends State<Homepage>
{
  int _index = 0; //nevigation bar indexes initilization
  @override
  Widget build(BuildContext context) {
    ////////////////////nevigation bar start//////////////

    Widget child = Container(
      decoration: BoxDecoration(),
    );

    switch (_index) {
      case 0:

      child=Home();

        break;
      case 1:
        child = QrCode(); //class activity want to function

        break;

        case 2:
        child = Ranking(); //class activity want to function

        break;

        case 3:
        child = ShopScreen(); //class activity want to function

        break;
    }

    return Scaffold(

      bottomNavigationBar: _bottomTab(),
      body: SizedBox.expand(child: child),
    );
  }

  Widget _bottomTab() {
    return Container(
      child: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) => setState(() => _index = index),
        backgroundColor: const Color(0xFF00003B),

        items: [
          // ignore: deprecated_member_use
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),
              title: Text("",)),

          BottomNavigationBarItem(
            // ignore: deprecated_member_use
              icon: Icon(Icons.qr_code,color: Colors.black,),
              title: Text("",)),

          BottomNavigationBarItem(
            // ignore: deprecated_member_use
              icon: Icon(Icons.all_inclusive_sharp,color: Colors.black,),
              title: Text("",)),

          BottomNavigationBarItem(
            // ignore: deprecated_member_use
              icon: Icon(Icons.shopping_cart,color: Colors.black,),
              title: Text("",)),
        ],
      ),
    );


  }

}