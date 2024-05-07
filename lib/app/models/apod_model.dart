class ApodModel {
  final String date;
  final String explanation;
  final String title;
  final String url;
  final String hdUrl;

  ApodModel({
    required this.date,
    required this.explanation,
    required this.title,
    required this.url,
    this.hdUrl = '',
  });

  factory ApodModel.fromJson(Map<String, dynamic> json) {
    return ApodModel(
      date: json['date'],
      explanation: json['explanation'],
      title: json['title'],
      url: json['url'],
      hdUrl: json['hdurl'] ?? '',
    );
  }
}
