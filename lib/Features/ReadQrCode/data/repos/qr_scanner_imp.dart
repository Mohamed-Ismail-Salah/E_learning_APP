import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_learning/Features/ReadQrCode/data/repos/qr_scanner_repo.dart';

import '../../../../../../Core/Utils/api_service.dart';
import '../../../../../../Core/error/faliure.dart';
import '../../../../Core/Utils/app_shared_preferences.dart';


class QrScannerImp implements QrScannerRepo{
  final ApiService apiService;
  QrScannerImp(this.apiService);

  @override
  Future<Either<Failure, String>> qrScannerRepo(String code, String  x,String y)async {
    try {
      FormData formData =
      FormData.fromMap({
        "x":x,
        "y":y,
        "code":code,
      });
      final tokenStorage = TokenStorage();
      String? token = await tokenStorage.getToken();
      var response = await apiService.postUsingHeaders(endpoint:"scan_code", data:formData,headers: {

        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data',
      });

      return right(response["status"]);

    } catch (e) {
      if(e is DioError){
        return left( ServerFailure.fromDioError(e));
      }
      return left(ServerFailure("Please make sure you are in the lecture location"));

    }


  }}
