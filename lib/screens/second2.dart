

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:lavacard/addcard.dart';
import 'package:lavacard/circle_loading.dart';
import 'package:lavacard/controllers/identitycontroller.dart';
import 'package:get/instance_manager.dart';
import 'package:lavacard/my_card_response.dart';
import 'package:lavacard/mycard_controller.dart';
import 'package:lavacard/screens/my_card_screen.dart';
import 'package:lavacard/screens/my_card_success_widget.dart';
import 'package:lavacard/user_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';







class SecondaryTest extends StatelessWidget {
  //late MyCardController controller;




  @override
  Widget build(BuildContext context) {
    // controller = MyCardController();
    // controller.gettingalldata();

    return Scaffold(
        body: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                      child: Row(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.house)),

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 32.0),
                              child: Text("LavaCard",
                                  textAlign: TextAlign.center,
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 40,
                ),

                //
                Expanded(
                  flex: 2,

                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),

                    child: Row(
                      children: <Widget>[
                        Text('Your Lavacard',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Color(
                                0xf55c5959))),
                        Expanded(
                            child: SizedBox(
                              width: 20,
                            )),
                        Text('Add New',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                      ],
                    ),
                  ),

                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                    color: Color(0xf5fff4e6),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                        Expanded(
                            flex: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)),
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            "https://static.generated.photos/vue-static/face-generator/landing/wall/14.jpg"))),
                                // Image.network('https://static.generated.photos/vue-static/face-generator/landing/wall/14.jpg',fit: BoxFit.fill,),
                              ),
                            )),
                        Column(
                          children: [
                            Text('Abdelrahman abdelwahab'),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) => _buildPopupDialog(context),
                                    );
                                  },
                                  child: Icon(Icons.share),
                                  style: TextButton.styleFrom(
                                    primary: Color(0xf5ffffff),
                                    backgroundColor: Colors.red,
                                    padding: EdgeInsets.all(4),
                                    shape: CircleBorder(),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Icon(Icons.edit),
                                  style: TextButton.styleFrom(
                                    primary: Color(0xf5ffffff),
                                    backgroundColor: Color(0xf5fa9025),
                                    padding: EdgeInsets.all(4),
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // Expanded(
                //   flex: 0,
                //   child: Container(
                //     padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                //
                //     child: Row(
                //       children: <Widget>[
                //         Text('Card Wallet(0)',
                //             style: TextStyle(
                //                 fontWeight: FontWeight.bold, color: Color(
                //                 0xf55c5959))),
                //         Expanded(
                //             child: SizedBox(
                //               width: 20,
                //             )),
                //         Text('Recently Added',
                //             style: TextStyle(
                //                 fontWeight: FontWeight.bold, color: Colors.red)),
                //         IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.chevronDown),iconSize: 15,color: Colors.red,),
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 170,

                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xf7ee8146),
                  ),
                  child: Column(

                    children: [

                      //Padding(padding: EdgeInsets.fromLTRB(15, 8, 10, 8)),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 0)),

                          Icon(Icons.person_outline, color: Colors.white,),

                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'UI Designer',
                            style: TextStyle(color: Colors.white),


                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [

                          Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),

                          Icon(Icons.phone, color: Colors.white,),

                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '+2010 1234 5678',
                            style: TextStyle(color: Colors.white),


                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [

                          Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),

                          Icon(
                            Icons.location_on_outlined, color: Colors.white,),

                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '18 Hafez Ramadan,Nasr City,cairo,Egypt',
                            style: TextStyle(color: Colors.white),


                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [

                          Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),

                          Icon(
                            Icons.speaker_phone_outlined, color: Colors.white,),

                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '+2992 2234 5678',
                            style: TextStyle(color: Colors.white),


                          ),

                        ],
                      ),


                    ],
                  ),


                ),

                Container(

                  margin: EdgeInsets.fromLTRB(20, 5, 20, 50),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xf7ee8146),
                  ),
                  child: Column(
                    children: [

                      //Padding(padding: EdgeInsets.fromLTRB(15, 8, 10, 8)),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 0)),
                          SizedBox(
                            height: 50,
                          ),
                          Icon(Icons.addchart, color: Colors.white,),

                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Lavaloon Business Card',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.white),

                          ),
                          SizedBox(width: 100,),
                          IconButton(onPressed: () {},
                            icon: FaIcon(
                                FontAwesomeIcons.externalLinkSquareAlt),
                            iconSize: 25,
                            color: Colors.white,)
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),


                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),

                  child: Row(
                    children: <Widget>[
                      Text('Card Wallet(0)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Color(
                              0xf55c5959))),
                      Expanded(
                          child: SizedBox(
                            width: 20,
                          )),
                      Text('Recently Added',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red)),
                      IconButton(onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.chevronDown),
                        iconSize: 15,
                        color: Colors.red,),
                    ],
                  ),
                ),


                Container(

                  margin: EdgeInsets.fromLTRB(20, 0, 20, 50),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xf7f8dddb),
                  ),
                  child: Column(
                    children: [

                      //Padding(padding: EdgeInsets.fromLTRB(15, 8, 10, 8)),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 0)),
                          SizedBox(
                            height: 50,
                          ),
                          Icon(Icons.addchart, color: Colors.red,),

                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Hi there , start adding contacts',
                            style: TextStyle(fontWeight: FontWeight.bold),


                          ),
                          SizedBox(width: 50,),
                          IconButton(onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.times),
                            iconSize: 17,)
                        ],
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Text(
                            'Automatically search and add other lavacard users in your contact list'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: TextButton(
                              onPressed: () {},
                              child: Text('Add New Contact'),
                              style: TextButton.styleFrom(
                                minimumSize: Size(80, 40),
                                primary: Color(0xf5ffffff),
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),


                    ],
                  ),
                ),


              ],
            ),
          ),
        ));
  }


  // Widget _buildPopupDialog(BuildContext context) {
  //   return new AlertDialog(
  //     title: const Text('Popup example'),
  //     content: new Column(
  //       mainAxisSize: MainAxisSize.min,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Text("Hello"),
  //       ],
  //     ),
  //     actions: <Widget>[
  //       new FlatButton(
  //         onPressed: () {
  //           Navigator.of(context).pop();
  //         },
  //         textColor: Theme.of(context).primaryColor,
  //         child: const Text('Close'),
  //       ),
  //     ],
  //   );
  // }
Widget _buildPopupDialog(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  Orientation orientation = MediaQuery.of(context).orientation;
  return new AlertDialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
   // backgroundColor: Colors.transparent,

    content: SizedBox(
      width: double.infinity,
      child: Container(
        width: MediaQuery.of(context).size.width - 10,
        height: MediaQuery.of(context).size.height - 10,
        // width: MediaQuery.of(context).size.width/2,
        // height: MediaQuery.of(context).size.height/2,

        child: new Column(

          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width -20,
              height: 170,

             // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xf7ee8146),
              ),
              // child: ListView(
              //   children: [
              //     ListTile(
              //       leading: Icon(Icons.person_outline),
              //       title: Text(itemcard.card.name as String),
              //     ),
              //
              //
              //   ],
              // ),


            ),

          ],
        ),
      ),
    ),

  );
}


}






