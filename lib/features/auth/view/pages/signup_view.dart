import 'package:dashboard_mvvm_arch/features/auth/blocs/top_players/top_players_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.read<TopPlayersBloc>().add(
                    TopPlayersEvent.getStarted(),
                  );
            },
            child: Text(
              'tap me',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
