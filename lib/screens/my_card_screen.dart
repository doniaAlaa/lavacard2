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
import 'package:lavacard/screens/user_card_view.dart';
import 'package:lavacard/screens/my_card_success_widget.dart';
import 'package:lavacard/user_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SecondTv extends StatelessWidget {
  late MyCardController controller;

  @override
  Widget build(BuildContext context) {
    controller = MyCardController();
    controller.gettingalldata();

    return Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            child: ListView(
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
                Container(
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
                      SizedBox(height: 60,)
                    ],
                  ),
                ),

                Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() {
                        var state = controller.state?.value;
                        if (state is CardSuccessState) {
                          return Success(cards: state.cards ?? []);
                        } else if (state is CardErrorState) {
                          return Text(state.errorMessage ?? "");
                        } else if (state is CardEmptyState) {
                          return addUserCard();
                        } else if (state is CardLoadingState) {
                          //return CircularProgressIndicator();
                          return LoadingCard();
                        } else {
                          return Container();
                        }
                      }),
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
                      IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.chevronDown),iconSize: 15,color: Colors.red,),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(

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
                ),
                SizedBox(
                  height: 90,
                ),

                Align(
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
                )
              ],
            ),
          ),
        ));
  }
}


class Success extends StatelessWidget {

  final List<CardOutputModel> cards;
  Success({required this.cards}) ;


  @override

  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: cards.length,
        itemBuilder: (context, index) {

         return UserCardViewScreen(card:cards[index]);


        });
  }
}
