import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:lavacard/identitymodel.dart';
import 'package:lavacard/services.dart';

class IdentityController extends GetxController
{
    var identityList = Identity(name: "",jobTiltle: "",type: "").obs;

    @override
    void onInit(){
        fetchClints();
        super.onInit();
    }

    void fetchClints() async {
        var clients = await Services.fetchClints();
        if (clients !=null){
            identityList.value = clients;
        }
    }
}

