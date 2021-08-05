import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lavacard/mycard_controller.dart';
import 'package:lavacard/my_card_response.dart';

class UserCardView extends StatelessWidget {
  late MyCardController controller;

  @override
  Widget build(BuildContext context) {
    controller = MyCardController();
    controller.gettingalldata();

    return Container(
      child: Column(
        children: [
          Flexible(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                child: Column(
                  children: [
                    Expanded(
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
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Text('Your Lavacard',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xf55c5959))),
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
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
                                    onPressed: () {},
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xf7f8dddb),
                      ),
                      child: Column(
                        children: [
                          //Padding(padding: EdgeInsets.fromLTRB(15, 8, 10, 8)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(10, 20, 10, 0)),
                              SizedBox(
                                height: 50,
                              ),
                              Icon(
                                Icons.person_outline,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              // ListView.builder(
                              //     shrinkWrap: true,
                              //     itemBuilder: (context, index) {
                              //       var state = controller.state!.value
                              //           as CardSuccessState;
                              //       return Container(
                              //         child: Text(
                              //             state.cards![index].name ?? ""),
                              //       );
                              //     }),
                              SizedBox(
                                width: 50,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
