import 'package:doc/core/di/dependency_injection.dart';
import 'package:doc/core/helpers/constants.dart';
import 'package:doc/core/helpers/extentions.dart';
import 'package:doc/core/helpers/shared_pref_helper.dart';
import 'package:doc/core/routings/app_router.dart';
import 'package:doc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  // To fix texts being hidden  bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  await checkLoggedInUser();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
