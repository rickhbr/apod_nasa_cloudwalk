import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/apod_model.dart';

class NasaService {
  final String apiKey = '70a6cfa9-1ddb-460c-9326-ade2f90ea2d8';

  Future<ApodModel> fetchApod({String? date}) async {
    final String url =
        'https://api.nasa.gov/planetary/apod?api_key=$apiKey${date != null ? '&date=$date' : ''}';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return ApodModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load APOD');
    }
  }
}
