class  UserModel {
  String? name;
  String? email;
  String?password;
  String ?img;
  String ?phone;
  String ?departmentId;
  String ?type;
  String ?updatedAt;
  String ?createdAt = ''; // provide a default value for the field
  int ?id;

  UserModel({
    this.name,
    this.email,
    this.password,
    this.img,
    this.phone,
    this.departmentId,
    this.type,
    this.updatedAt,
    required this.id,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['data']['name'];
    email = json['data']['email'];
    password = json['data']['password'];
    img = json['data']['img'];
    phone = json['data']['phone'];
    departmentId = json['data']['department_id'];
    type = json['data']['type'];
    updatedAt = json['data']['updated_at'];
    createdAt = json['data']['created_at'];
    id = json['data']['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['img'] = img;
    data['phone'] = phone;
    data['department_id'] = departmentId;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    return data;
  }
}
