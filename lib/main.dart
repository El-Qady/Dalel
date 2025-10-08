import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/dalel_app.dart';
import 'package:flutter_application_1/core/databases/cache/cache_helper.dart';
import 'package:flutter_application_1/core/functions/check_current_user_state.dart';
import 'package:flutter_application_1/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await CacheHelper.init();
  checkCurrentUserState();
  runApp(const MyApp());
}
