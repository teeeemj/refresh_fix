import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class NavLink extends StatelessWidget {
  final String label;
  final PageRouteInfo destination;

  const NavLink({
    Key? key,
    required this.label,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.router.push(destination);
      },
      child: Text(label),
    );
  }
}
