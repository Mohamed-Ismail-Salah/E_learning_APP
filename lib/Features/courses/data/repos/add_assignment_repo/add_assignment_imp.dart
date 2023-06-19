import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/models/add_courses_model.dart';
import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import 'add_assignment_repo.dart';

class AddAssignmentImp implements AddAssignmentRepo {
  final ApiService apiService;
  AddAssignmentImp(this.apiService);

  @override
  Future<Failure?>  addAssignment(
      String title,
      File? file,
      String courseId,
      String desc,

      ) async {
    try {
      FormData formData =
      FormData.fromMap({
        "title": title,
        "course_id":courseId ,
        "desc": desc,
        "file": file != null ? await MultipartFile.fromFile(file.path) : null,});
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
        await apiService.postUsingHeaders(endpoint:"lecture_assignment",
          data:formData,headers: {

        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });


      return null; // Return appropriate Failure object or null
    } catch (e) {
      if (e is DioError) {
        return ServerFailure.fromDioError(e);
      }
      return ServerFailure(e.toString());
    }
  }
}