class  QrCodeModel {
  final int id;
  final int courseId;
  final int? sectionNum;
  final int? lectureNum;
  final String x;
  final String y;
  final String randomCode;
  final DateTime createdAt;
  final DateTime updatedAt;

  QrCodeModel({
    required this.id,
    required this.courseId,
    required this.sectionNum,
    required this.lectureNum,
    required this.x,
    required this.y,
    required this.randomCode,
    required this.createdAt,
    required this.updatedAt,
  });

  factory QrCodeModel.fromJson(Map<String, dynamic> json) {
    return QrCodeModel(
      id: json['id'],
      courseId: json['course_id'],
      sectionNum: json['section_num'],
      lectureNum: json['lecture_num'],
      x: json['x'],
      y: json['y'],
      randomCode: json['randam_code'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
