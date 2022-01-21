import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel/core/router/router.dart';
import 'package:travel/core/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          title: 'Travel',
          routeInformationParser: AppRouter.router.routeInformationParser,
          routerDelegate: AppRouter.router.routerDelegate,
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
