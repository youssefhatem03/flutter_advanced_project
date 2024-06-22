import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../app/constants.dart';
import 'package:json_annotation/json_annotation.dart';

import '../responses/responses.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseURl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customers/login")
  Future<AuthenticationResponse> login();

}
