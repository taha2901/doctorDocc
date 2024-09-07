import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_services.dart';
import 'package:doc/core/networking/dio_factory.dart';
import 'package:doc/features/home/data/apis/home_api_services.dart';
import 'package:doc/features/home/data/repos/home_repo.dart';
import 'package:doc/features/home/logic/home_cubit.dart';
import 'package:doc/features/login/data/repos/login_repo.dart';
import 'package:doc/features/login/logic/login_cubit.dart';
import 'package:doc/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doc/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> setUpGetIt() async {
  //dio & ApiServices
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));


  // signup
  getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
  getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));

  //home
  getit.registerLazySingleton<HomeApiServices>(() => HomeApiServices(dio));
  getit.registerLazySingleton<HomeRepo>(() => HomeRepo(getit()));
  // getit.registerFactory<HomeCubit>(() => HomeCubit(getit()));
}
