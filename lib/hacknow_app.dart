import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hacknow_app/helpers/colors.dart';
import 'package:hacknow_app/helpers/routes.dart';

class HacknowApp extends StatelessWidget {
  final AppRouters appRouter;
  const HacknowApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            primaryColor: ColorsManger.primaryColor,
            scaffoldBackgroundColor: ColorsManger.bgColor),
        initialRoute: Routes.welcomeScreen,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
