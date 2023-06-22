import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/models/quiz_model.dart';
import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import 'add_quiz_repo.dart';

class AddQuizImp implements AddQuizRepo {
  final ApiService apiService;
  AddQuizImp(this.apiService);

  @override
  Future<Failure?>  addQuiz(QuizModel quizModel) async {
    try {
      final Data = quizModel.toJson();
      var jsonData = jsonEncode( Data);

print(jsonData);
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      await apiService.postMapUsingHeaders(endpoint:"all_quiz",
          data: jsonData,
          headers: {

            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          });


      return null;
    } catch (e) {
      if (e is DioError) {
        return ServerFailure.fromDioError(e);
      }
      return ServerFailure(e.toString());
    }
  }
}