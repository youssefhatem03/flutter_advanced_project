import 'package:flutter_advanced_project/data/network/app_api.dart';
import 'package:flutter_advanced_project/data/request/request.dart';
import 'package:flutter_advanced_project/data/responses/responses.dart';

abstract class RemoteDataSource{
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
}


class RemoteDataSourceImplementor implements RemoteDataSource{

  AppServiceClient _appServiceClient;

  RemoteDataSourceImplementor(this._appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async {
    return await _appServiceClient.login(
      loginRequest.email,
      loginRequest.pasword,
      loginRequest.imei,
      loginRequest.deviceType
    );
  }

}