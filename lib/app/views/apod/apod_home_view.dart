import 'package:apod_nasa_cloudwalk/app/views/apod/apod_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/apod_controller.dart';

class ApodHomeView extends StatelessWidget {
  const ApodHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final ApodController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('NASA APOD'),
      ),
      body: Obx(() {
        if (controller.isLoading.isTrue) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.apod.value.title),
              subtitle: Text(controller.apod.value.date),
              onTap: () => Get.to(const ApodDetailView()),
            );
          },
        );
      }),
    );
  }
}
