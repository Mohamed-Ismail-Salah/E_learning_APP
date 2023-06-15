import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
import '../models/student_inf_model.dart';
import 'get_student_inf_repo.dart';


class GetStudentIfImpRepo implements GetStudentIfRepo  {

  final ApiService apiService;
  GetStudentIfImpRepo(this.apiService);
  @override
  Future<Either<Failure,List<StudentInfModel> >> getStudent(String name ) async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getUsingHeaders(endpoint:"user/search/$name", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      List<StudentInfModel> data = response.map<StudentInfModel>((json) => StudentInfModel.fromJson(json)).toList();

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
