import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:latihan/app/appwrite/AccountController.dart';
import 'package:latihan/app/appwrite/ClientController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ClientController>(ClientController());
    Get.put<AccountController>(AccountController());
  }
}
