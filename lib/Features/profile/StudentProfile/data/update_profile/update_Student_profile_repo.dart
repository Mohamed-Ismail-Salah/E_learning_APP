import 'package:dartz/dartz.dart';
 import '../../../../../Core/error/faliure.dart';
import '../models/profile_Student_info_model.dart';

abstract class UpdateStudentProfileRepo {
  Future<Either<Failure,ProfileStudentDataModel>> updateStudentProfile(

      String name,
      String email,
       String phone,
       String password,
      String fatherPhone,
      String fatherEmail,
      String universityEmail,


  );
}