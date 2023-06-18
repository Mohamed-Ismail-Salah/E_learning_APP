class StudentInfModel {
  int id;
  String name;
  String email;
  DateTime? emailVerifiedAt;
  String ssn;
  String img;
  String phone;
  int departmentId;
  String? apiToken;
  DateTime createdAt;
  DateTime updatedAt;
  String passwordConfirmation;
  String fatherPhone;
  String? fatherEmail;
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
    required this.fatherPhone,
    this.fatherEmail,
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
      apiToken: json['api_token']?.toString(),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      passwordConfirmation: json['password_confirmation'],
      fatherPhone: json['father_phone'],
      fatherEmail: json['father_email']?.toString(),
      universityEmail: json['university_email'],
    );
  }
}
