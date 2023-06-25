import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/models/quiz_model.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
 import '../../modles/Student_quiz_model.dart';
import 'get_Student_quiz_repo.dart';

class GetStudentQuizImp implements GetStudentQuizRepo {
  final ApiService apiService;
  GetStudentQuizImp(this.apiService);

  @override
  Future<Either<Failure,List<AllQuizModel> >> getStudentQuizRepo(
String id
      ) async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getUsingHeaders(endpoint:"course_quizes/$id", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      List<AllQuizModel> data = response.map<AllQuizModel>((json) => AllQuizModel.fromJson(json)).toList();

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
