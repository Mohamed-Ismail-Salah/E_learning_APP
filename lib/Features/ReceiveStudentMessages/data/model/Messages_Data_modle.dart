class MessageDataModel {
  int id;
  String message;
  String? file;
  String fatherEmail;
  String createdAt;
  String updatedAt;

  MessageDataModel({
    required this.id,
    required this.message,
     this.file,
    required this.fatherEmail,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MessageDataModel.fromJson(Map<String, dynamic> json) {
    return MessageDataModel(
      id: json['id'],
      message: json['message'],
      file: json['file'],
      fatherEmail: json['father_email'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
