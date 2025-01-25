import 'package:auto_route/auto_route.dart';
import 'package:dashboard_mvvm_arch/features/auth/blocs/top_players/top_players_bloc.dart';
import 'package:dashboard_mvvm_arch/features/auth/view/pages/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => TopPlayersBloc(),
      ),
    ], child: SignupView());
  }
}
