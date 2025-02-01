import 'package:dashboard_mvvm_arch/core/auto_bloc/auto_bloc.dart';
import 'package:dashboard_mvvm_arch/core/storage/shared_pref_storage.dart';
import 'package:dashboard_mvvm_arch/features/auth/models/login_request_model/login_request_model.dart';
import 'package:dashboard_mvvm_arch/features/auth/models/top_players/top_players_resp_model.dart';
import 'package:dashboard_mvvm_arch/features/auth/repositories/auth_remote_repository.dart';

part 'top_players_event.dart';
part 'top_players_state.dart';
part 'top_players_bloc.freezed.dart';

class TopPlayersBloc extends AutoBloc<TopPlayersEvent, TopPlayersState> {
  final _authRemoteRepository = AuthRemoteRepository();
  TopPlayersBloc() : super(const TopPlayersState.initial()) {
    on<_GetStarted>((event, emit) async {
      emit(const TopPlayersState.loading());
      final response = await _authRemoteRepository.getPlayers();
      print('response $response');
      emit(TopPlayersState.success(response));
    });
  }

  @override
  TopPlayersState errorFactory(String message) {
    return TopPlayersState.error(message);
  }
}
