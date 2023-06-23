

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
 import 'package:e_learning/Features/profile/StudentProfile/data/update_profile/update_Student_profile_repo.dart';

import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
import '../models/profile_Student_info_model.dart';

class UpdateStudentProfileImp implements UpdateStudentProfileRepo  {

  final ApiService apiService;
  UpdateStudentProfileImp(this.apiService);
  @override
  Future<Either<Failure,ProfileStudentDataModel>> updateStudentProfile(

      String name,
      String email,
      String phone,
      String password,
      String fatherPhone,
      String fatherEmail,
      String universityEmail,

      ) async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.putUsingHeaders(endpoint:"users/update",
          headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      }, data:  FormData.fromMap({
        "name": name,
        "email": email,
        "password": password,
            "ssn":"ssn",
       "father_email":fatherEmail,
            "father_phone":fatherPhone,
            "phone": phone,
            "university_email":universityEmail,
            "department_id":  "1",
      }

      ));
      print(response);
      var responseData = response['data'];
      ProfileStudentDataModel data = ProfileStudentDataModel.fromJson(responseData);

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
