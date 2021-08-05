import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:lavacard/controllers/identitycontroller.dart';
import 'package:get/instance_manager.dart';


class MainPage extends StatelessWidget{
  final IdentityController identityController = Get.put(IdentityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1F26),

      body:
      ListView(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image(
                          image: NetworkImage('https://img.freepik.com/free-vector/gold-luxury-background_52683-42558.jpg?size=626&ext=jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container
                              (child: Text('hhhhhhhhhhhhhhhhhhh')
                            ),
                          ],
                        ),
                      ),
                    )


                  ],
                ),
              ),
            ),
          )
        ],

      ),


    );
  }

}