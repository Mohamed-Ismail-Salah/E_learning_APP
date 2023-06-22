import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_learning/Features/Authentication/AdminAuthentication/data/repos/signupRepos/signup_admin_repo.dart';

import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import '../../models/userModel.dart';

class SignUpAdminRepoImp implements SignUpAdminRepo {
  final ApiService apiService;
  SignUpAdminRepoImp(this.apiService);

  @override
  Future<Either<Failure, UserModel>> signUpAsAdmin(String name, String email,
      String password, String phone, String type, String departmentId) async {
    try {
      var response = await apiService.post(endpoint:"staff", data: {
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,
        "type": type,
        "department_id": departmentId
      });
      UserModel user = UserModel.fromJson(response);
      return right(user);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure("This email already exists"));
    }
  }
}
