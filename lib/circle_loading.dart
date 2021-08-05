import 'package:flutter/material.dart';



class LoadingCard  extends StatefulWidget{




  @override
  LoadingCardState createState() => LoadingCardState();
}


class LoadingCardState extends State<LoadingCard> {


  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.all(20),
        child: (
            CircularProgressIndicator()
        ),
      ),






    );
  }



}


