import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
 import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
import '../../models/get_Student_grades_modle.dart';
import 'get_Student_grades_repo.dart';


class GetStudentGradesImp implements GetStudentGradesRepo {
  final ApiService apiService;
  GetStudentGradesImp(this.apiService);

  @override
  Future<Either<Failure,List<StudentGradesModel> >> getStudentGradesRepo(
      int courseId,
      int quizId,
      ) async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getMapUsingHeaders(endpoint:"answer_all_quiz/$courseId/$quizId", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      Map<String, dynamic> jsonData = response;
      List<StudentGradesModel> data = jsonData['users']
          .map<StudentGradesModel>((json) => StudentGradesModel.fromJson(json))
          .toList();

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
