import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
import '../../model/Messages_Data_modle.dart';
import 'get_message_data_repos.dart';


class GetMessageDataImp implements GetMessageDataRepo {
  final ApiService apiService;
  GetMessageDataImp(this.apiService);

  @override
  Future<Either<Failure,List<MessageDataModel> >> getMessageData() async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.getMapUsingHeaders(endpoint:"messages_per_email", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });

      final jsonData = response['data'];


       List<MessageDataModel> data = jsonData.map<MessageDataModel>((json) => MessageDataModel.fromJson(json)).toList();

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
