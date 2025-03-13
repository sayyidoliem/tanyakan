import 'package:auth/auth.dart';
import 'package:bot/bot.dart';
import 'package:core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:bot/presentation/pages/detail_bot_page.dart';
import 'package:tanyakan/features/settings/presentation/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Env.supabaseBaseUrl,
    anonKey: Env.supabaseKey,
    authOptions: const FlutterAuthClientOptions(
      authFlowType: AuthFlowType.pkce,
      autoRefreshToken: true,
      localStorage: EmptyLocalStorage(),
      detectSessionInUri: true,
    ),
    realtimeClientOptions: const RealtimeClientOptions(
      logLevel: RealtimeLogLevel.info,
    ),
    storageOptions: const StorageClientOptions(
      retryAttempts: 10,
    ),
  );
  runApp(
    AppInfo(
      data: await AppInfoData.get(),
      child: ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(
    initialLocation: '/chat',
    routes: <RouteBase>[
      GoRoute(
        name: SPLASH_PAGE_ROUTE,
        path: '/splash',
        builder: (context, state) => const SplashPage(),
      ),
      // GoRoute(
      //   name: LOGIN_PAGE_ROUTE,
      //   path: '/login',
      //   builder: (context, state) => const LoginPage(),
      // ),
      GoRoute(
        name: LOGIN_SCREEN_ROUTE,
        path: '/login-screen',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: SIGN_UP_PAGE_ROUTE,
        path: '/sign-up',
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        name: VERIFICATION_PAGE_ROUTE,
        path: '/verification',
        builder: (context, state) {
          final params = state.extra as VerificationPageParams?;
          if (params == null) {
            throw 'Missing VerificationPageParams object';
          }
          return VerificationPage(params: params);
        },
      ),
      GoRoute(
        name: CHAT_PAGE_ROUTE,
        path: '/chat',
        builder: (context, state) => const ChatPage(),
      ),
      GoRoute(
        name: HOME_PAGE_ROUTE,
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: DETAIL_BOT_PAGE_ROUTE,
        path: '/detail-bot',
        builder: (context, state) => const DetailBotPage(),
      ),
      GoRoute(
        name: ABOUT_PAGE_ROUTE,
        path: '/about',
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        name: ACCOUNT_PAGE_ROUTE,
        path: '/account',
        builder: (context, state) => const AccountPage(),
      ),
      GoRoute(
        name: SETTING_PAGE_ROUTE,
        path: '/setting',
        builder: (context, state) => const SettingPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Tanyakan Apps(demo)',
      debugShowCheckedModeBanner: false,
      // theme: MaterialTheme().light(),
      darkTheme: MaterialTheme().dark(),
      themeMode: ThemeMode.system,
    );
  }
}
