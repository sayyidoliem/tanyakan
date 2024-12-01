import 'package:auto_route/auto_route.dart';
import 'package:tanyakan/utils/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, path: '/login', initial: false),
        AutoRoute(page: ChatRoute.page, path: '/chat', initial: true),
      ];
}
