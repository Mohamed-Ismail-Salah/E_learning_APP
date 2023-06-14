import 'package:dartz/dartz.dart';
import '../../../../../Core/error/faliure.dart';

abstract class AddQrCodeRepo {
  Future<Either<Failure,String>> addQrCode(String  x, String y, int courseId, String sectionName);
}
