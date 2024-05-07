import 'package:get/get.dart';
import '../models/apod_model.dart';
import '../services/nasa_service.dart';

class ApodController extends GetxController {
  var isLoading = true.obs;
  var apod =
      ApodModel(date: '', explanation: '', title: '', url: '', hdUrl: '').obs;

  final NasaService _nasaService;

  ApodController(this._nasaService);

  @override
  void onInit() {
    fetchApod();
    super.onInit();
  }

  void fetchApod({String? date}) async {
    try {
      isLoading(true);
      var fetchedApod = await _nasaService.fetchApod(date: date);

      apod(fetchedApod);
    } finally {
      isLoading(false);
    }
  }
}
