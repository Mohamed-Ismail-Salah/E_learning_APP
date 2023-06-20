import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/models/Assignment_modle.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
import 'get_all_assignments_repos.dart';


class GetAssignmentsImp implements GetAssignmentsRepo {
  final ApiService apiService;
  GetAssignmentsImp(this.apiService);

  @override
  Future<Either<Failure,List<AssignmentModel> >> getAssignments(int id) async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getMapUsingHeaders(endpoint:"lecture_assignments_per_id/$id", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      Map<String, dynamic> jsonData = response;
      List<AssignmentModel> data = jsonData['assignment']
          .map<AssignmentModel>((json) => AssignmentModel.fromJson(json))
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
