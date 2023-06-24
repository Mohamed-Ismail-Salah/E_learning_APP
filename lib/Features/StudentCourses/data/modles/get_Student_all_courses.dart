class GetStudentCourseModel {
  final int id;
  final String name;
  final String level;
  final String term;
  final String hours;
  final String code;
  final String img;
  final DateTime createdAt;
  final DateTime updatedAt;

  GetStudentCourseModel({
    required this.id,
    required this.name,
    required this.level,
    required this.term,
    required this.hours,
    required this.code,
    required this.img,
    required this.createdAt,
    required this.updatedAt,
  });

  factory GetStudentCourseModel.fromJson(Map<String, dynamic> json) {
    return GetStudentCourseModel(
      id: json['id'],
      name: json['name'],
      level: json['level'],
      term: json['term'],
      hours: json['hours'],
      code: json['code'],
      img: json['img'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
