class StudentGradesModel {
  final String name;
  final int degree;

  StudentGradesModel({required this.name, required this.degree});

  factory StudentGradesModel.fromJson(Map<String, dynamic> json) {
    return StudentGradesModel(
      name: json['user'],
      degree: int.parse(json['degree']),
    );
  }
}
