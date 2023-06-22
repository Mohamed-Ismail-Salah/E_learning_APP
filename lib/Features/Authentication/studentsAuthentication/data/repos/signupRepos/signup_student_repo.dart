
import '../../../../../../Core/error/faliure.dart';

abstract class SignUpStudentRepo {
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
     String fatherPhone,

      );
}
