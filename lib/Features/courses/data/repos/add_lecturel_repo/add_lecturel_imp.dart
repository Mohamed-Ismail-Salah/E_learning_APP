import 'dart:io';
import 'package:dio/dio.dart';
import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import 'add_lecturel_repo.dart';

class AddLecturesImp implements AddLecturesRepo {
  final ApiService apiService;
  AddLecturesImp(this.apiService);

  @override
  Future<Failure?>  addLectures(
      String title,
      File? file,
      String code,
      String? link,

      ) async {
    try {
      FormData formData =
      FormData.fromMap({
        "title": title,
        "code":code ,
        "link": link,
        "file": file != null ? await MultipartFile.fromFile(file.path) : null,});
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      await apiService.postUsingHeaders(endpoint:"lectures",
          data:formData,headers: {

            'Authorization': 'Bearer $token',
            'Content-Type': 'multipart/form-data',
          });


      return null;
    } catch (e) {
      if (e is DioError) {
        return ServerFailure.fromDioError(e);
      }
      return ServerFailure(e.toString());
    }
  }
}