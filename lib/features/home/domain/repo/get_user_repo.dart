import 'package:dartz/dartz.dart';
import 'package:deepseek/core/network/models/api_error_model.dart';
import 'package:deepseek/features/home/domain/entity/user_entity.dart';

abstract class GetUserRepo{
  Future<Either<ApiFaliureModel,List<UserEntity>>>getUsers();
}