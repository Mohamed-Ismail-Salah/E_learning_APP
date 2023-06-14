import 'package:dartz/dartz.dart';

import '../../../../../Core/error/faliure.dart';
import '../../models/qrCodes_model.dart';

abstract class GetQrAllCodeRepo {
  Future<Either<Failure,List<QrCodeModel>>> getQrAllCode(int id);
}
