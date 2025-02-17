import 'app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/splash', initial: false),
        AutoRoute(page: LoginRoute.page, path: '/login', initial: false),
        AutoRoute(page: ChatRoute.page, path: '/chat', initial: false),
        AutoRoute(page: HomeRoute.page, path: '/home', initial: true),
        AutoRoute(page: DetailBotRoute.page, path: '/detail-bot', initial: false),
        AutoRoute(page: AboutRoute.page, path: '/about'),
        AutoRoute(page: AccountRoute.page, path: '/account'),
        AutoRoute(page: SettingRoute.page, path: '/setting')
      ];
}

