import 'package:auto_route/auto_route.dart';
import 'package:dashboard_mvvm_arch/core/router/router.dart';
import 'package:dashboard_mvvm_arch/features/dashboard/view/widgets/nav_link.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              NavLink(
                  label: 'AnalyticsRoute', destination: const AnalyticsRoute()),
              NavLink(label: 'NoteRoute', destination: const NoteRoute()),
            ],
          ),
          Expanded(
            child: AutoRouter(), // This renders the nested child route
          ),
        ],
      ),
    );
  }
}
