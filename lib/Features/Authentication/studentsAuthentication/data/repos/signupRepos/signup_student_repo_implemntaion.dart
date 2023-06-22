 import 'package:dio/dio.dart';
 import 'package:e_learning/Features/Authentication/studentsAuthentication/data/repos/signupRepos/signup_student_repo.dart';
import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';

class SignUpStudentRepoImp implements SignUpStudentRepo {
  final ApiService apiService;
  SignUpStudentRepoImp(this.apiService);

  @override
  Future<Failure?> signUpAsStudent(
      String name,
      String email,
      String password,
      String passwordConfirmation,
      String phone,
      String universityEmail,
      String departmentId,
      String fatherEmail,
      String ssn,
      String fatherPhone,) async {
    try {
     await apiService.post(endpoint:"users", data: {
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,
        "ssn":ssn,
        "password_confirmation":passwordConfirmation,
        "father_phone":fatherPhone,
        "father_email":fatherEmail,
        "university_email":universityEmail,
        "department_id": departmentId
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