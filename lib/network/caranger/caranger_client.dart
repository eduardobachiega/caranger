import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:caranger/model/user.dart';

part 'caranger_client.g.dart';

@RestApi(baseUrl: "http://demo9531941.mockable.io/")
abstract class CarangerClient {
  factory CarangerClient(Dio dio, {String baseUrl}) = _CarangerClient;

  @FormUrlEncoded()
  @POST("user/login")
  Future<User> getUser(@Field("user") String user,
      @Field("password") String password);
}
