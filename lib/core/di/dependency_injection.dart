import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_services.dart';
import 'package:doc/core/networking/dio_factory.dart';
import 'package:doc/features/login/data/repos/login_repo.dart';
import 'package:doc/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> setUpGetIt() async {
  //dio & ApiServices
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerLazySingleton<LoginCubit>(() => LoginCubit(getit()));

  
}
