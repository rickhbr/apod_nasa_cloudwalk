import 'package:get/get.dart';
import '../controllers/apod_controller.dart';
import '../services/nasa_service.dart';

class ApodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NasaService>(() => NasaService());
    Get.lazyPut<ApodController>(() => ApodController(Get.find()));
  }
}
