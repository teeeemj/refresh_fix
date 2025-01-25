import 'package:auto_route/auto_route.dart';
import 'package:dashboard_mvvm_arch/core/exception_pages/not_found_page.dart';
import 'package:dashboard_mvvm_arch/features/auth/view/pages/login_page.dart';
import 'package:dashboard_mvvm_arch/features/auth/view/pages/signup_page.dart';
import 'package:dashboard_mvvm_arch/features/dashboard/view/pages/analytics_page.dart';
import 'package:dashboard_mvvm_arch/features/dashboard/view/pages/main_page.dart';
import 'package:dashboard_mvvm_arch/features/dashboard/view/pages/note_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(page: SignupRoute.page),
        AutoRoute(page: MainRoute.page, path: '/main', children: [
          AutoRoute(
            page: AnalyticsRoute.page,
            path: 'analytics',
          ),
          AutoRoute(page: NoteRoute.page, path: 'note'),
        ])
      ];
}
