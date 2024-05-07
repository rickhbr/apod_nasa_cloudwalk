import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/apod_controller.dart';

class ApodDetailView extends StatelessWidget {
  const ApodDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final ApodController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(controller.apod.value.url),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(controller.apod.value.title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(controller.apod.value.date),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(controller.apod.value.explanation),
            ),
          ],
        ),
      ),
    );
  }
}
