class StudentInfModel {
  int id;
  String name;
  String email;
  DateTime? emailVerifiedAt; // Updated to be nullable
  String ssn;
  String img;
  String phone;
  int departmentId;
  String? apiToken; // Updated to be nullable
  DateTime createdAt;
  DateTime updatedAt;
  String passwordConfirmation;
  String parentPhone;
  String universityEmail;

  StudentInfModel({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    required this.ssn,
    required this.img,
    required this.phone,
    required this.departmentId,
    this.apiToken,
    required this.createdAt,
    required this.updatedAt,
    required this.passwordConfirmation,
    required this.parentPhone,
    required this.universityEmail,
  });

  factory StudentInfModel.fromJson(Map<String, dynamic> json) {
    return StudentInfModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      emailVerifiedAt: json['email_verified_at'] != null
          ? DateTime.parse(json['email_verified_at'])
          : null,
      ssn: json['ssn'],
      img: json['img'],
      phone: json['phone'],
      departmentId: json['department_id'],
      apiToken: json['api_token'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      passwordConfirmation: json['password_confirmation'],
      parentPhone: json['parent_phone'],
      universityEmail: json['university_email'],
    );
  }
}
