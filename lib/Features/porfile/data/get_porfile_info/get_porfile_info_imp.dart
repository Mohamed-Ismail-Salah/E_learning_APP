

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../Core/Utils/api_service.dart';
import '../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../Core/error/faliure.dart';
import '../models/porfile_info_model.dart';
import 'get_porfile_info_repo.dart';

class GetProfileIfoImp implements GetProfileInfRepo  {

  final ApiService apiService;
  GetProfileIfoImp(this.apiService);
  @override
  Future<Either<Failure,ProfileInfoModel>> getProfileIf() async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getMapUsingHeaders(endpoint:"staff/1", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      ProfileInfoModel data = ProfileInfoModel.fromJson(response);

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
