import 'package:dio/dio.dart';
import 'package:caranger/network/caranger/caranger_client.dart';

class CarangerApi {
  CarangerClient _client;
  Dio dio;

  RyuApi() {
    dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true));
    _client = CarangerClient(dio);
  }

}