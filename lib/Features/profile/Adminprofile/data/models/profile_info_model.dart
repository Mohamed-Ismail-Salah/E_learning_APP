class ProfileInfoModel {
  int id;
  String name;
  String email;
  String password;
  String img;
  String phone;
  int departmentId;
  String type;
  DateTime createdAt;
  DateTime updatedAt;

  ProfileInfoModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.img,
    required this.phone,
    required this.departmentId,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProfileInfoModel.fromJson(Map<String, dynamic> json) {
    return ProfileInfoModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      img: json['img'],
      phone: json['phone'],
      departmentId: json['department_id'],
      type: json['type'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}

class ProfileDataModel {
  int id;
  String name;
  String email;
  String password;
  String img;
  String phone;
  String departmentId;
  String type;
  DateTime createdAt;
  DateTime updatedAt;

  ProfileDataModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.img,
    required this.phone,
    required this.departmentId,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) {
    return ProfileDataModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
      img: json['img'] ?? '',
      phone: json['phone'] ?? '',
      departmentId: json['department_id'] ?? '',
      type: json['type'] ?? '',
      createdAt: DateTime.parse(json['created_at'] ?? ''),
      updatedAt: DateTime.parse(json['updated_at'] ?? ''),
    );
  }
}
