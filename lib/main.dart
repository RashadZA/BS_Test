import 'package:bs_test/src/config/router/app_pages.dart';
import 'package:bs_test/src/config/themes/app_theme.dart';
import 'package:bs_test/src/data/datasources/local/gs_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GSServices.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BS Test',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: AppPages.routes,
      initialBinding: BindingsX.initialBindigs(),
      theme: AppTheme.lightTheme,
      unknownRoute: AppPages.unknownRoute,
    );
  }
}
