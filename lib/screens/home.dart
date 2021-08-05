import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:lavacard/controllers/identitycontroller.dart';
import 'package:get/instance_manager.dart';


class HomePage extends StatelessWidget{
  final IdentityController identityController = IdentityController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Obx(()=>
                  Text(
                      "type:${identityController.identityList.value.name}"
                  )
              ),
            ],
          ),
        ),
      )


    );
  }

}