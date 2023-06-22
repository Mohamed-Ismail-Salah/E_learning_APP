import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import 'login_student_repo.dart';

class LoginStudentRepoImp implements LoginStudentRepo{
  final ApiService apiService;
  LoginStudentRepoImp(this.apiService);

  @override
  Future<Either<Failure, String>> loginAsStudent(String email, String password)async {
   try {
     var data= await apiService.post(endpoint:"login", data:{"email":email,"password":password});

     return right(data['token']);

     } catch (e) {
     if(e is DioError){
return left( ServerFailure.fromDioError(e));
   }
     return left(ServerFailure("Please check your email and password"));

   }


  }




}

