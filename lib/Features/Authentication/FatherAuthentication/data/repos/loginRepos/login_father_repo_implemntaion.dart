import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import 'login_father_repo.dart';

class LoginFatherRepoImp implements LoginFatherRepo{
  final ApiService apiService;
  LoginFatherRepoImp(this.apiService);

  @override
  Future<Either<Failure, String>> loginAsFather(String email, String password)async {
   try {
     print("sssssssssss");
     var data= await apiService.post(endpoint:"login/father", data:{"email":email,"password":password});
print(data);
     return right(data['token']);

     } catch (e) {
     if(e is DioError){
return left( ServerFailure.fromDioError(e));
   }
     return left(ServerFailure("Please check your email and password"));

   }


  }




}

