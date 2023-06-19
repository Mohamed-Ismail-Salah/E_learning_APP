 import 'dart:io';
import '../../../../../Core/error/faliure.dart';

abstract class SendMessageRepo {
  Future<Failure?> sendMessage(String message,String fatherEmail,
      //File file

      );
}