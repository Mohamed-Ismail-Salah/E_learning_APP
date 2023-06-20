import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/models/Assignment_modle.dart';
import 'package:e_learning/Features/courses/data/models/all_lecture.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
import 'get_Lecture_repo.dart';


class GetLectureRepoImp implements GetLectureRepo {
  final ApiService apiService;
  GetLectureRepoImp(this.apiService);

  @override
  Future<Either<Failure,List<LectureModel> >> getLecture(String  code) async {
    try {

      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getMapUsingHeaders(endpoint:"course_lectures/$code", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      print(response );
      Map<String, dynamic> jsonData = response;
      List<LectureModel> data = jsonData['lectures']
          .map<LectureModel>((json) =>LectureModel.fromJson(json))
          .toList();
print(data);
      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
