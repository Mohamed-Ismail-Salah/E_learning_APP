 import 'package:dio/dio.dart';
import 'package:e_learning/Features/Authentication/FatherAuthentication/data/repos/signupRepos/signup_Father_repo.dart';
 import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';

class SignUpFatherRepoImp implements SignUpFatherRepo {
  final ApiService apiService;
  SignUpFatherRepoImp(this.apiService);

  @override
  Future<Failure?> signUpAsFather(
      String name,
      String email,
      String password,
       String phone,

      ) async {
    try {
     await apiService.post(endpoint:"father", data: {
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,

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