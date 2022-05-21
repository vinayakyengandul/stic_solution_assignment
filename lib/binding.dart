import 'package:get/get.dart';
import 'package:stic_soft_assignment/controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}