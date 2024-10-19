import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://api.itbook.store/1.0";

  final Dio dio;

  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var resopnse = await dio.get("$_baseUrl$endPoint");
    return resopnse.data;
  }
}
