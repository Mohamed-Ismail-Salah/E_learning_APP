import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/models/get_all_courses.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
 import 'git_courses_repo.dart';

class GetCoursesRepoImp implements GetCoursesRepo {
  final ApiService apiService;
  GetCoursesRepoImp(this.apiService);

  @override
  Future<Either<Failure,List<GetCourseModel> >> getCourses() async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getUsingHeaders(endpoint:"course", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      List<GetCourseModel> data = response.map<GetCourseModel>((json) => GetCourseModel.fromJson(json)).toList();

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
