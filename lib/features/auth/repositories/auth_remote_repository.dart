import 'dart:developer';

import 'package:dashboard_mvvm_arch/features/auth/models/top_players/top_players_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:dashboard_mvvm_arch/core/interceptors/dio_interceptors.dart';
import 'package:dashboard_mvvm_arch/features/auth/models/login_request_model/login_request_model.dart';
import 'package:dashboard_mvvm_arch/features/auth/models/login_response_model/login_response_model.dart';

class AuthRemoteRepository {
  late final Dio _anonymousDio;
  late final Dio _authorizedDio;

  AuthRemoteRepository() {
    log('AuthRemoteRepository initialized');

    _anonymousDio = createAnonymousDio();
    _authorizedDio = createAuthorizedDio();
  }

  Future<LoginResponseModel> login({
    required LoginRequestModel reqModel,
  }) async {
    final reqJsonModel = reqModel.toJson();
    final response =
        await _anonymousDio.post('/moses/token/obtain/', data: reqJsonModel);
    validateResponse(response);
    final resFromJsonModel = LoginResponseModel.fromJson(response.data['data']);
    return resFromJsonModel;
  }

  Future<TopPlayersRespModel> getPlayers() async {
    final response = await _authorizedDio.get(
        '/accounts/profile/?season=872eaa69-d5ba-492b-89d6-508390cd2166&offset=0&limit=10');
    final validResponse = await validateResponse(response);
    return TopPlayersRespModel.fromJson(validResponse.data);
  }
}
