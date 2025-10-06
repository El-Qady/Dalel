import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/databases/cache/cache_helper.dart';
import 'package:flutter_application_1/core/routes/app_router.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      routerConfig: router,
    );
  }
}
