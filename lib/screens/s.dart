

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:lavacard/addcard.dart';
import 'package:lavacard/circle_loading.dart';
import 'package:lavacard/controllers/identitycontroller.dart';
import 'package:get/instance_manager.dart';
import 'package:lavacard/mycard_controller.dart';
import 'package:lavacard/user_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Secondary extends StatelessWidget {
  late MyCardController controller;

  @override
  Widget build(BuildContext context) {
    controller = MyCardController();
    controller.gettingalldata();

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
                      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
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
                  flex: 0,
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
                                fontWeight: FontWeight.bold, color: Colors.red)),
                      ],
                    ),
                  ),

                ),



                Expanded(

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(

                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: (){
                                  print('done');
                                },


                                child: Column(
                                  mainAxisSize: MainAxisSize.min,

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    SizedBox(height: 15,),
                                    Icon(Icons.add,size: 40,),
                                    SizedBox(height: 10,),
                                    Text("Create your digital business card", style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal), ),
                                    SizedBox(height: 20,),

                                  ],
                                ),
                                style: TextButton.styleFrom(

                                    primary: Color(0xf5fa9025),
                                    onSurface: Colors.red,
                                    backgroundColor: Color(0xf5fff4e6),
                                    minimumSize: Size(370, 300)
                                ),

                              )
                            ],

                          ),


                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
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
                        IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.chevronDown),iconSize: 15,color: Colors.red,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Container(
                      height: 500,
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),

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
                              Icon(Icons.addchart,color: Colors.red,),

                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Hi there , start adding contacts',
                                style: TextStyle(fontWeight: FontWeight.bold),


                              ),
                              SizedBox(width: 50,),
                              IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.times),iconSize: 17,)
                            ],
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 8),
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
                                  child: Text('Scan QR Code'),
                                  style: TextButton.styleFrom(
                                    minimumSize: Size(80, 40),
                                    primary: Color(0xf5ffffff),
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    )),
                SizedBox(
                  height: 90,
                ),

                Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: TextButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                          style: TextButton.styleFrom(
                            primary: Color(0xf5ffffff),
                            backgroundColor: Colors.red,
                            padding: EdgeInsets.all(16),
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
