import 'package:flutter/material.dart';
import 'package:flutter_project/core/routing/app_router.dart';
import 'package:flutter_project/core/routing/routes.dart';
import 'package:flutter_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'DocApp',
        theme: ThemeData(
          primaryColor: ColorsManager.color247CFF,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboardingView,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
