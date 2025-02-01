import 'package:dashboard_mvvm_arch/features/auth/blocs/top_players/top_players_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TopPlayersBloc, TopPlayersState>(
        listener: (context, state) {
          if (state is TopPlayersStateError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          return Center(
              child: ElevatedButton(
            onPressed: () {
              final bloc = context.read<TopPlayersBloc>();
              if (bloc.state is! TopPlayersStateLoading) {
                bloc.add(TopPlayersEvent.getStarted());
              }
            },
            child: const Text('tap me'),
          ));
        },
      ),
    );
  }
}
