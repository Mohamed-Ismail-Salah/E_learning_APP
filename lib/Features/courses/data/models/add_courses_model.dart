class AddCourseModel {
  String name;
  String term;
  String level;
  String hours;
  String code;
  String img;
  String updatedAt;
  String createdAt;
  int id;

  AddCourseModel({
    required this.name,
    required this.term,
    required this.level,
    required this.hours,
    required this.code,
    required this.img,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory AddCourseModel.fromJson(Map<String, dynamic> json) {
    return AddCourseModel(
      name: json['data']['name'],
      term: json['data']['term'],
      level: json['data']['level'],
      hours: json['data']['hours'],
      code: json['data']['code'],
      img: json['data']['img'],
      updatedAt: json['data']['updated_at'],
      createdAt: json['data']['created_at'],
      id: json['data']['id'],
    );
  }
}
