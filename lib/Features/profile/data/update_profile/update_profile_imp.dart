

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_learning/Features/profile/data/update_profile/update_profile_repo.dart';

import '../../../../Core/Utils/api_service.dart';
import '../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../Core/error/faliure.dart';
import '../models/profile_info_model.dart';

class UpdateProfileImp implements UpdateProfileRepo  {

  final ApiService apiService;
  UpdateProfileImp(this.apiService);
  @override
  Future<Either<Failure,ProfileDataModel>> updateProfile(String name,String email,String password,String phone) async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.putUsingHeaders(endpoint:"staff/update",
          headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      }, data:  FormData.fromMap({
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,
        "department_id":  "1",
        "type":"doc"
      }
      ));
      var responseData = response['data'];
      ProfileDataModel data = ProfileDataModel.fromJson(responseData);
      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
