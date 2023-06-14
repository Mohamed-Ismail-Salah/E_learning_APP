import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/error/faliure.dart';
 import 'login_admin_repo.dart';

class LoginAdminRepoImp implements LoginAdminRepo{
  final ApiService apiService;
  LoginAdminRepoImp(this.apiService);

  @override
  Future<Either<Failure, String>> loginAsAdmin(String email, String password)async {
   try {
     var data= await apiService.post(endpoint:"login/staff", data:{"email":email,"password":password});

     return right(data['token']);

     } catch (e) {
     if(e is DioError){
return left( ServerFailure.fromDioError(e));
   }
     return left(ServerFailure("Please check your email and password"));

   }


  }




}

