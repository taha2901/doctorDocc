import 'package:doc/core/di/dependency_injection.dart';
import 'package:doc/core/routings/app_router.dart';
import 'package:doc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
  setUpGetIt();
  // To fix texts being hidden  bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
