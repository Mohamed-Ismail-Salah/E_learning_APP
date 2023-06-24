import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
import '../../modles/get_Student_all_courses.dart';
import 'git_Student_courses_repo.dart';

class GetStudentCoursesRepoImp implements GetStudentCoursesRepo {
  final ApiService apiService;
  GetStudentCoursesRepoImp(this.apiService);

  @override
  Future<Either<Failure,List<GetStudentCourseModel> >> getStudentCourses(
      String level,String term) async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getUsingHeaders(endpoint:"course/$level/$term", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      List<GetStudentCourseModel> data = response.map<GetStudentCourseModel>((json) => GetStudentCourseModel.fromJson(json)).toList();

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
