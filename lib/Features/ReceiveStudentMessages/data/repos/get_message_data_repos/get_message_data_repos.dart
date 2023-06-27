import 'package:dartz/dartz.dart';

import '../../../../../Core/error/faliure.dart';
import '../../model/Messages_Data_modle.dart';

abstract class GetMessageDataRepo {
  Future<Either<Failure,List<MessageDataModel>>> getMessageData( );
}
