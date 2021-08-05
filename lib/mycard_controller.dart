import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'package:lavacard/my_card_client.dart';
import 'package:lavacard/my_card_response.dart';
import 'package:lavacard/services.dart';

class MyCardController extends GetxController
{
  //var CardList = CardListOutputModel([]).obs;
  Rx<CardState>? state;

  @override
  void onInit(){
    gettingalldata();
    super.onInit();
  }

  //void loadingCards() async {
   // var clients = await MyCardClient.loadingCards();
  //  if (clients !=null){
  //    CardList.value = clients;
   // }
 // }
  Future<void> gettingalldata () async{
    _setState(CardLoadingState());
    var result = await MyCardClient.gettingCards();
    await Future.delayed(Duration(seconds: 1));
    if(result != null){
      if (result.isSuccess && result.outputModel != null){
        if (result.outputModel!.isEmpty){
          _setState(CardEmptyState());
        }else{
          _setState(CardSuccessState(result.outputModel));
        }
      }else{
        _setState(CardErrorState(result.errorMessage!.isKey, result.errorMessage!.message));
      }
    }else{
      _setState(CardErrorState(true, "error"));
    }

  }




  _setState(CardState newState) {
    if (state == null) {
      state = newState.obs;
    }
    state!.value = newState;
  }

}

abstract class CardState {}

class CardLoadingState implements CardState {}

class CardEmptyState implements CardState {}

class CardSuccessState implements CardState {
  final List<CardOutputModel>? cards;

  CardSuccessState(this.cards);
}

class CardErrorState implements CardState {
  final bool isKey;
  final String? errorMessage;

  CardErrorState(this.isKey, this.errorMessage);
}