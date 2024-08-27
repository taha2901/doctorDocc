import 'package:doc/core/di/dependency_injection.dart';
import 'package:doc/core/routings/app_router.dart';
import 'package:doc/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setUpGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
