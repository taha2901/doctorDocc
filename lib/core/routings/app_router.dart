import 'package:doc/core/di/dependency_injection.dart';
import 'package:doc/core/routings/routers.dart';
import 'package:doc/features/home/logic/home_cubit.dart';
import 'package:doc/features/home/ui/home_screen.dart';
import 'package:doc/features/login/logic/cubit/login_cubit.dart';
import 'package:doc/features/login/ui/login_screen.dart';
import 'package:doc/features/on_boarding/on_boarding_screen.dart';
import 'package:doc/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routers.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routers.signUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routers.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getit())..getSpecializations(),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
