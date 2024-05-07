import 'package:apod_nasa_cloudwalk/app/bindings/apod_binding.dart';
import 'package:apod_nasa_cloudwalk/app/views/apod/apod_home_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const ApodHomeView(),
      binding: ApodBinding(),
    ),
  ];
}
