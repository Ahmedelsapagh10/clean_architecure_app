import 'package:clean_architecure_app/config/theme/theme.dart';

import 'package:clean_architecure_app/core/utiles/asset_managers.dart';
import 'package:flutter/material.dart';

import 'core/utiles/app_strings.dart';

class QouteApp extends StatelessWidget {
  const QouteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppStrings.appName),
        ),
        body: Center(
          child: Image.asset(ImageAsset.imageOne),
        ),
      ),
    );
  }
}
