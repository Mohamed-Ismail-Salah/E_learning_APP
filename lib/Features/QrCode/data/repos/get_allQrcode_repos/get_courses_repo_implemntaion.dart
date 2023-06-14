import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/error/faliure.dart';
import '../../models/qrCodes_model.dart';
import 'git_courses_repo.dart';

class GetQrAllCodeRepoImp implements GetQrAllCodeRepo {
  final ApiService apiService;
  GetQrAllCodeRepoImp(this.apiService);

  @override
  Future<Either<Failure,List<QrCodeModel> >> getQrAllCode(int id ) async {
    try {
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
       var response = await apiService.getUsingHeaders(endpoint:"all_codes/$id", headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });
      List<QrCodeModel> data = response.map<QrCodeModel>((json) => QrCodeModel.fromJson(json)).toList();

      return right(data);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
