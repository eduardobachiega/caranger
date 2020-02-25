// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caranger_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _CarangerClient implements CarangerClient {
  _CarangerClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'http://demo9531941.mockable.io/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  login(user, password) async {
    ArgumentError.checkNotNull(user, 'user');
    ArgumentError.checkNotNull(password, 'password');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data =
        FormData.fromMap(<String, dynamic>{'user': user, 'password': password});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'user/login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = User.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  getCarDetails(carId) async {
    ArgumentError.checkNotNull(carId, 'carId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'car/$carId/details',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Car.fromJson(_result.data);
    return Future.value(value);
  }
}
