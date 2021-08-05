import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Main extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1F26),

      body: Center(
        child: Container(
          child: Column(

            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
                child: Column(
                  children: [
                    ElevatedButton.icon(
                      label: Text('Your Saved Cards' , textAlign: TextAlign.left,),
                      icon: Icon(Icons.web),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50),
                        primary:  Color(0xFF4B4D55), // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {},

                    ),
                  ],
                ),
              ),
              Container(

                child:  Card(
                  margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                  child: FittedBox(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Image.network("https://img.freepik.com/free-vector/gold-luxury-background_52683-42558.jpg?size=626&ext=jpg",fit: BoxFit.cover,),

                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text("This is a widget"),
                        )
                      ],
                    ),
                    fit: BoxFit.cover,

                  ),
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }

}