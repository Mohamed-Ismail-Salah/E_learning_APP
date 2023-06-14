import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
 import 'package:e_learning/Features/courses/data/models/add_courses_model.dart';
import 'package:e_learning/Features/courses/data/repos/update_course_repos/update_courses_repo.dart';
 import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';


class UpdateCoursesRepoImp implements UpdateCoursesRepo {
  final ApiService apiService;
  UpdateCoursesRepoImp(this.apiService);

  @override
  Future<Either<Failure,AddCourseModel>> updateCourses(
      String id,
      String name,
      String level,
      String term,
      String hours,
      String code,
       File img,
      ) async {
    try {
      FormData formData =
        FormData.fromMap({
        "name": name,
        "level": level,
        "term": term,
        "hours": hours,
        "code": code,
        "img": await MultipartFile.fromFile(img.path, filename: "dp")});
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.putUsingHeaders(endpoint:"course_update/$id", data:formData,headers: {

        'Authorization': 'Bearer $token',
         'Content-Type': 'multipart/form-data',
      });

       AddCourseModel addCourse = AddCourseModel.fromJson(response);
      return right(addCourse);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure("Please check your Data"));
    }
  }
}
