//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lavacard/mycard_controller.dart';
import 'package:lavacard/my_card_response.dart';
import 'package:lavacard/screens/my_card_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserCardViewScreen extends StatelessWidget {
  //late MyCardController controller;
  final CardOutputModel card;

//  UserCardViewScreen(this.card) ;

  late Success success;

  UserCardViewScreen({required this.card});

  @override
  Widget build(BuildContext context) {
    //  controller = MyCardController();

    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
            alignment: Alignment.center,
            color: Color(0xf5fff4e6),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://static.generated.photos/vue-static/face-generator/landing/wall/14.jpg"))),
                  // Image.network('https://static.generated.photos/vue-static/face-generator/landing/wall/14.jpg',fit: BoxFit.fill,),
                ),
                Column(
                  children: [
                    Text(card.name as String),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => Overlay(card),
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
        ],
      ),
    );
  }
}

class Overlay extends StatelessWidget {


  final CardOutputModel card;

  Overlay(this.card);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return new AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
       backgroundColor: Colors.black26,

      content: SizedBox(
        width: double.infinity,
        child: Container(
          //color: Color(0x25212121),
          width: MediaQuery.of(context).size.width -10,
          height: MediaQuery.of(context).size.height -10,
          // width: MediaQuery.of(context).size.width/2,
          // height: MediaQuery.of(context).size.height/2,

          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Icon(Icons.close_outlined,color: Colors.white,),

                    ) ,
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xf5fff4e6),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2, 5, 2),
                    child: ListTile(
                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 50,
                          minHeight: 50,
                          maxWidth: 70,
                          maxHeight: 70,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: NetworkImage("https://static.generated.photos/vue-static/face-generator/landing/wall/14.jpg"),
                          ),
                        )
                      ),
                      title: Text("Share Your Card",style: TextStyle(fontSize: 15,color:Color(0xf7de6f32) ),),
                      subtitle: Text(card.name as String , style: TextStyle(fontSize: 19,color:Colors.black,),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 200,

                  // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xf7de6f32),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListView(
                      children: [
                        ListTile(

                          dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                          visualDensity: VisualDensity(horizontal: 0, vertical: -4),

                          leading: Icon(Icons.person_outline,color: Colors.white,),
                          title: Text(card.name as String,style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                          leading: Icon(Icons.account_box_outlined,color: Colors.white,),
                          title: Text(card.jobTitle as String ,style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                          leading: Icon(Icons.phone,color: Colors.white,),
                          title: Text(card.mobileNumber as String,style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                          leading: Icon(Icons.location_on_outlined,color: Colors.white,),
                          title: Text(card.address as String,style: TextStyle(color: Colors.white),),
                        ),
                        Container(
                          child: Wrap(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: new Icon(FontAwesomeIcons.facebookF,),
                                style: TextButton.styleFrom(
                                  primary: Color(0xf7de6f32),
                                  backgroundColor: Color(0xf5ffffff),
                                  padding: EdgeInsets.all(4),
                                  minimumSize: Size(25, 25),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),)
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: new Icon(FontAwesomeIcons.linkedinIn,),
                                style: TextButton.styleFrom(
                                    primary: Color(0xf7de6f32),
                                    backgroundColor: Color(0xf5ffffff),
                                    padding: EdgeInsets.all(4),
                                    minimumSize: Size(25, 25),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),)
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: new Icon(FontAwesomeIcons.twitter,),
                                style: TextButton.styleFrom(
                                    primary: Color(0xf7de6f32),
                                    backgroundColor: Color(0xf5ffffff),
                                    padding: EdgeInsets.all(4),
                                    minimumSize: Size(25, 25),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),)
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: new Icon(FontAwesomeIcons.link,),
                                style: TextButton.styleFrom(
                                    primary: Color(0xf7de6f32),
                                    backgroundColor: Color(0xf5ffffff),
                                    padding: EdgeInsets.all(4),
                                    minimumSize: Size(25, 25),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),)
                                ),
                              ),
                            ],
                          ),
                        )



                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xf7ffffff),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: QrImage(
                      data: "1234567890999999999999999999999999999uyhyug87h8uuuuuuu8hhy7yh7hu87",
                      version: QrVersions.auto,
                      size: 200.0,

                    ),
                  ) ,
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Divider(color: Colors.white,)
                        ),
                        SizedBox(width: 5,),
                        Text("OR",style: TextStyle(color: Colors.white,),),
                        SizedBox(width: 5,),

                        Expanded(
                            child: Divider(color: Colors.white,)
                        ),
                      ]
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Share Your Link'),
                        style: TextButton.styleFrom(
                          minimumSize: Size(80, 40),
                          primary: Colors.white,
                          backgroundColor: Color(0xf7de6f32),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
