import 'package:flutter/material.dart';
import 'package:flutter_project/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
