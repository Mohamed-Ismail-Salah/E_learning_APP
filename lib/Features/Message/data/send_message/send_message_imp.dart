

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:e_learning/Features/Message/data/send_message/send_message_repo.dart';

import '../../../../Core/Utils/api_service.dart';
import '../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../Core/error/faliure.dart';

class SendMessageImp  implements SendMessageRepo  {

  final ApiService apiService;
  SendMessageImp(this.apiService);
  @override
  Future<Failure?> sendMessage(String message, String fatherEmail,
      //File file
      )  async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
       await apiService.postUsingHeaders(endpoint:"message", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      }, data:  FormData.fromMap({
         "message":message  ,
         "father_email": fatherEmail ,
        // "file":  MultipartFile.fromFile(file.path),
       }
       ));


      return null; // Return appropriate Failure object or null
    } catch (e) {
      if (e is DioError) {
        return ServerFailure.fromDioError(e);
      }
      return ServerFailure(e.toString());
    }
  }
}