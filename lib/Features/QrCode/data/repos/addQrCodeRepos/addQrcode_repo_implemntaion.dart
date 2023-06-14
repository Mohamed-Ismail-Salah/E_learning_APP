import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import 'addQrCode_repo.dart';

class AddQrCodeRepoImp implements AddQrCodeRepo {
  final ApiService apiService;
  AddQrCodeRepoImp(this.apiService);

  @override
  Future<Either<Failure, String>> addQrCode(  x,y, courseId, sectionName) async {
    try {
      FormData formData =
      FormData.fromMap({
        "x":x,
        "y":y,
       "course_id":courseId,
        "section_name":sectionName,
      });
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.postUsingHeaders(endpoint:"generate_code", data:formData,headers: {

        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });

       return right(response["code"]);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure("Please check your Data"));
    }
  }
}
