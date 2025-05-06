import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hacknow_app/hacknow_app.dart';
import 'package:hacknow_app/helpers/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  runApp(HacknowApp(
    appRouter: AppRouters(),
  ));
}
