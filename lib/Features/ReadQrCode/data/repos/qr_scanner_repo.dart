import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';

abstract class QrScannerRepo {
  Future<Either<Failure,String>> qrScannerRepo(String code, String x,String y);
}
