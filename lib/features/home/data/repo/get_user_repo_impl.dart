import 'package:dartz/dartz.dart';

import 'package:deepseek/core/network/models/api_error_model.dart';
import 'package:deepseek/features/home/data/data_source/get_user_date_source.dart';

import 'package:deepseek/features/home/domain/entity/user_entity.dart';

import '../../../../core/network/exception/server_exception.dart';
import '../../domain/repo/get_user_repo.dart';

class GetUserRepoImpl extends GetUserRepo{
  final GetUserDateSource _getUserDateSource;

  GetUserRepoImpl(this._getUserDateSource);
  @override
  Future<Either<ApiFaliureModel, List<UserEntity>>> getUsers() async{
    try{
      final result =await  _getUserDateSource.getAllUsers();
      return Right(result);
    }
    on ServerException catch (failure) {
      return Left(failure.errorModel);
    }
  }
}