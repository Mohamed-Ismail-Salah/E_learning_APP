class LectureModel {
  final int id;
  final String title;
  final String file;
  final String code;
  final String? link;
  final DateTime createdAt;
  final DateTime updatedAt;

  LectureModel({
    required this.id,
    required this.title,
    required this.file,
    required this.code,
    required this.link,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LectureModel.fromJson(Map<String, dynamic> json) {
    return LectureModel(
      id: json['id'] ,
      title: json['title'] ,
      file: json['file'] ,
      code: json['code'] ,
      link: json['link'] ,
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
