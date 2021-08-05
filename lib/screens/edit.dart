import 'package:flutter/cupertino.dart';
import 'package:lavacard/my_card_response.dart';

class edit extends StatelessWidget{
 final CardOutputModel card;

 edit({required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(card.name as String),
    );
  }
}