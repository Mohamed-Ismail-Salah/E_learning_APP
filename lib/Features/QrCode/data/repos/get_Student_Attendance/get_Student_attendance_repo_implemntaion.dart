import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import 'get_Student_attendance_repo.dart';


class GetStudentAttendanceRepoImp implements GetStudentAttendanceRepo {
  final ApiService apiService;
  GetStudentAttendanceRepoImp(this.apiService);

  @override
  Future<Either<Failure, List>> getStudentAttendance(code) async {
    try {
      FormData formData =
      FormData.fromMap({
        "code":code,
      });
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.postUsingHeaders(endpoint:"users_per_code", data:formData,headers: {

        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });

      return right(response["users"]);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure("Please check your Data"));
    }
  }
}
