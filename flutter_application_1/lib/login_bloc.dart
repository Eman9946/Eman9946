// ignore_for_file: override_on_non_overriding_member

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

// ignore: duplicate_ignore
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  // ignore: override_on_non_overriding_member
  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();

      try {
        // Implement your authentication logic here
        // Example: validate username and password, make API call, etc.
        // If successful, yield LoginSuccess(), otherwise yield LoginFailure()
        yield LoginSuccess();
      } catch (error) {
        yield LoginFailure(error: 'Failed to log in');
      }
    }
  }
}
