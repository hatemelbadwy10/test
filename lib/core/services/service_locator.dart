
import 'package:deepseek/features/home/data/repo/get_user_repo_impl.dart';
import 'package:deepseek/features/home/domain/repo/get_user_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/presention/controller/user_bloc.dart';
import '../network/network_provider/api_services.dart';
import '../network/network_provider/dio_api_service_impl.dart';

GetIt getIt = GetIt.instance;

setupSingeltonServices() async {


  getIt.registerLazySingleton<ApiService>(() => DioApiServiceImpl());
_userDI();
}
_userDI() {
  getIt.registerLazySingleton<GetUserRepo>(
          () => GetUserRepoImpl(getIt()));
  getIt.registerLazySingleton<GetUserRepo>(
          () => GetUserRepoImpl(getIt()));
  getIt.registerFactory(() => UserBloc(getIt()));
}
