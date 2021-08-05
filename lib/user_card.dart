import 'package:flutter/material.dart';



class UserCard  extends StatefulWidget{
  final String? id;
  final String? name;
  final String? email;
  final String? address;
  final String? jobTitle;
  final String? company;
  final DateTime? mobileNumber;
  final DateTime? photo;


  const UserCard({Key? key, this.id, this.name,this.email,
    this.address,
    this.jobTitle,
    this.company,
    this.mobileNumber,
    this.photo,}) : super(key: key);

  @override
  UserCardState createState() => UserCardState();
}


class UserCardState extends State<UserCard> {


  @override
  Widget build(BuildContext context) {
    return Container();
  }



}


