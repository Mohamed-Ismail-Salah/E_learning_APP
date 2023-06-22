import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://what-a-sito.000webhostapp.com/api/";
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> git({required String endpoint}) async {
    var response = await dio.get('$_baseUrl$endpoint');
    return response.data;
  }
  Future<List<dynamic>> getUsingHeaders({required String endpoint,required Map<String, String> headers }) async {
    var response = await dio.get('$_baseUrl$endpoint',options: Options(headers: headers));
    return response.data;
  }

  Future<Map<String,dynamic>> getMapUsingHeaders({required String endpoint,required Map<String, String> headers }) async {
    var response = await dio.get('$_baseUrl$endpoint',options: Options(headers: headers));
    return response.data;
  }


  Future<Map<String, dynamic>> post(
      {required String endpoint, required Map<String, dynamic> data}) async {
    final response = await dio.post('$_baseUrl$endpoint', data: data,);
    return response.data;
  }
  Future<Map<String, dynamic>> postUsingHeaders(
      {required String endpoint, required FormData data,required Map<String, String> headers}) async {
    final response = await dio.post('$_baseUrl$endpoint', data: data,options: Options(headers: headers),);
    return response.data;
  }

  Future<Map<String, dynamic>> postMapUsingHeaders(
      {required String endpoint, required  var  data,required Map<String, String> headers}) async {
    final response = await dio.post('$_baseUrl$endpoint', data: data,options: Options(headers: headers),);
    return response.data;
  }


  Future<Map<String, dynamic>> putUsingHeaders(
      {required String endpoint, required FormData data,required Map<String, String> headers}) async {
    final response = await dio.post('$_baseUrl$endpoint', data: data,options: Options(headers: headers),);
    return response.data;
  }
}
