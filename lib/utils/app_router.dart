import 'package:auto_route/auto_route.dart';
import 'package:tanyakan/utils/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ChatRoute.page, path: '/', initial: true),
      ];
}
