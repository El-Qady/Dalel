import 'package:go_router/go_router.dart';

void navigationPushReplacement(context, String routeName) {
  GoRouter.of(context).pushReplacement(routeName);
}
