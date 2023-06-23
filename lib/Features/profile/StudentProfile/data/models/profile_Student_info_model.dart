
class ProfileStudentInfoModel {
  final int id;
  final String name;
  final String email;
  final String? emailVerifiedAt; // Make it nullable
  final String ssn;
  final String img;
  final String phone;
  final int departmentId;
  final String? apiToken;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String passwordConfirmation;
  final String fatherPhone;
  final String fatherEmail;
  final String universityEmail;

  ProfileStudentInfoModel({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt, // Nullable field
    required this.ssn,
    required this.img,
    required this.phone,
    required this.departmentId,
      this.apiToken,
    required this.createdAt,
    required this.updatedAt,
    required this.passwordConfirmation,
    required this.fatherPhone,
    required this.fatherEmail,
    required this.universityEmail,
  });

  factory ProfileStudentInfoModel.fromJson(Map<String, dynamic> json) {
    return ProfileStudentInfoModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      emailVerifiedAt: json['email_verified_at'], // Can be null
      ssn: json['ssn'],
      img: json['img'],
      phone: json['phone'],
      departmentId: json['department_id'],
      apiToken: json['api_token'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      passwordConfirmation: json['password_confirmation'],
      fatherPhone: json['father_phone'],
      fatherEmail: json['father_email'],
      universityEmail: json['university_email'],
    );
  }
}

class ProfileStudentDataModel {
  final int id;
  final String name;
  final String email;
  final String? emailVerifiedAt;
  final String ssn;
  final String img;
  final String phone;
  final String departmentId;
  final String? apiToken;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String passwordConfirmation;
  final String fatherPhone;
  final String fatherEmail;
  final String universityEmail;

  ProfileStudentDataModel({
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
    required this.fatherEmail,
    required this.universityEmail,
  });

  factory ProfileStudentDataModel.fromJson(Map<String, dynamic> json) {
    return ProfileStudentDataModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      emailVerifiedAt: json ['email_verified_at'] != null
          ?  json['email_verified_at']
          : "",
      ssn: json['ssn'],
      img: json['img'],
      phone: json['phone'],
      departmentId:json['department_id'],
        apiToken:json["api_token"],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      passwordConfirmation: json['password_confirmation'],
      fatherPhone: json['father_phone'],
      fatherEmail: json['father_email'],
      universityEmail: json['university_email'],
    );
  }
}
