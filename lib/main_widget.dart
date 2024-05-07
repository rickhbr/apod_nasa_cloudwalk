import 'package:apod_nasa_cloudwalk/app/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NASA APOD',
      initialRoute: '/',
      getPages: AppRoutes.routes,
    );
  }
}
