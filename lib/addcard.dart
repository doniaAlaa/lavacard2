import 'package:flutter/material.dart';



class addUserCard  extends StatefulWidget{




  @override
  addUserCardState createState() => addUserCardState();
}


class addUserCardState extends State<addUserCard> {


  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                print('done');
              },


              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add,size: 50,),
                  Text("Create your digital business card", style: TextStyle(color: Colors.black),)
                ],
              ),
              style: TextButton.styleFrom(

                  primary: Color(0xf5fa9025),
                  onSurface: Colors.red,
                  backgroundColor: Color(0xf5f6e5d3),
                  minimumSize: Size(370, 300)
              ),

            )
          ],

        ),


      ),






    );
  }



}


