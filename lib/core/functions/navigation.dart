import 'package:go_router/go_router.dart';

void navigationPushReplacement(context, String routeName) {
  GoRouter.of(context).pushReplacement(routeName);
}

void navigationPush(context, String routeName) {
  GoRouter.of(context).push(routeName);
}

void navigationPop(context) {
  GoRouter.of(context).pop();
}
