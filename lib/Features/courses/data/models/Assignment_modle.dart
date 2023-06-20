class AssignmentModel {
  final int id;
  final String title;
  final String? desc;
  final String? file;
  final int courseId;
  final DateTime createdAt;
  final DateTime updatedAt;

  AssignmentModel({
    required this.id,
    required this.title,
    this.desc,
    this.file,
    required this.courseId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AssignmentModel.fromJson(Map<String, dynamic> json) {
    return AssignmentModel(
      id: json['id'],
      title: json['title'],
      desc: json['desc'],
      file: json['file'],
      courseId: json['course_id'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
