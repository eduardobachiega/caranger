import 'package:caranger/model/user.dart';
import 'package:dio/dio.dart';
import 'package:caranger/network/caranger/caranger_client.dart';

class CarangerApi {
  CarangerClient _client;
  Dio dio;

  CarangerApi() {
    dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true));
    _client = CarangerClient(dio);
  }

  Future<User> login(String user, String password) async {
    final response = await _client.login(user, password);
    return Future.value(response);
  }
}