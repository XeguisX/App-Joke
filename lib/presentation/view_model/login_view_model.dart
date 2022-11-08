import 'package:app_joke/presentation/view_model/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginViewModel extends StateNotifier<LoginState> {
  LoginViewModel() : super(LoginInitial());

  void login(String email, String password) async {
    state = LoginLoading();
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      state = LoginSuccess();
    } catch (_, __) {
      state = LoginFailure();
    }
  }
}
