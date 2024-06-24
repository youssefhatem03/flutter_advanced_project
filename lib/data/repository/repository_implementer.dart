import 'package:dartz/dartz.dart';
import 'package:flutter_advanced_project/data/data_source/remote_data_source.dart';
import 'package:flutter_advanced_project/data/mapper/mapper.dart';
import 'package:flutter_advanced_project/data/network/failure.dart';
import 'package:flutter_advanced_project/data/network/network_info.dart';
import 'package:flutter_advanced_project/data/request/request.dart';
import 'package:flutter_advanced_project/domain/model.dart';
import 'package:flutter_advanced_project/domain/repository.dart';

class RepositoryImplementer implements Repository{

  RemoteDataSource _remoteDataSource;
  NetworkInfo _networkInfo;

  RepositoryImplementer(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected){
      final response = await _remoteDataSource.login(loginRequest);
      if (response.status == 0){
        // success
        return Right(response.toDomain());
      } else{
        return Left(Failure(401, response.message?? "An error occurred"));
      }
    } else {
      return Left(Failure(500, "Check your internet connection"));
    }
  }

}