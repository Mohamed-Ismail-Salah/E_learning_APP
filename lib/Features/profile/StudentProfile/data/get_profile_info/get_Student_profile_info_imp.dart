import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
import '../models/profile_Student_info_model.dart';
import 'get_Student_porfile_info_repo.dart';

class GetStudentProfileIfoImp implements GetStudentProfileInfRepo  {

  final ApiService apiService;
  GetStudentProfileIfoImp(this.apiService);
  @override
  Future<Either<Failure,ProfileStudentInfoModel>> getStudentProfileIf() async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getMapUsingHeaders(endpoint:"users/show", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      ProfileStudentInfoModel data = ProfileStudentInfoModel.fromJson(response);

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
