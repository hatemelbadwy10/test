import 'package:deepseek/core/network/api_constants.dart';
import 'package:deepseek/core/network/network_provider/api_services.dart';
import 'package:deepseek/features/home/data/model/user_model.dart';

import '../../../../core/network/exception/server_exception.dart';
import '../../domain/entity/user_entity.dart';

abstract class GetUserDateSource {
Future<List<UserEntity>> getAllUsers();
}
class GetUserDateSourceImpl extends GetUserDateSource {
  final ApiService _apiService;

  GetUserDateSourceImpl(this._apiService);

  @override
  Future<List<UserEntity>> getAllUsers() async {
    final response = await _apiService.get(ApiConstants.users);

    return response.fold(
          (l) => throw ServerException(errorModel: l),
          (r) => (r.data as List) // Ensure it's a list
          .map((json) => UserModel.fromJson(json)) // Convert each JSON to UserModel
          .toList(), // Convert Iterable to List
    );
  }
}
