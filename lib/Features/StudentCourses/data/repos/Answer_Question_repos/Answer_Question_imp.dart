import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_learning/Features/StudentCourses/data/modles/answer_modle.dart';

import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import 'Answer_Question_repos.dart';

class AnswerQuistionsImp implements AnswerQuistionsRepo{
    final ApiService apiService;
  AnswerQuistionsImp(this.apiService);

  @override
  Future<Either<Failure, String>> answerQuistionsRepo(
       AnswerModel  answerModel
      )async {
    try {
      final jsonData = jsonEncode(answerModel.toJson());
print(jsonData);
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var data =await apiService.postStringUsingHeaders(endpoint:"answer_all_quiz",
          data: jsonData,
          headers: {

            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          });

      return right(data.toString());

    } catch (e) {
      if(e is DioError){
        return left( ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));

    }


  }
}
