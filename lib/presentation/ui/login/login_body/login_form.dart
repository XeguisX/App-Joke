import 'package:app_joke/di_container.dart';
import 'package:app_joke/presentation/ui/login/login_body/login_buttons.dart';
import 'package:app_joke/presentation/ui/login/login_body/login_social_buttons.dart';
import 'package:app_joke/presentation/view_model/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  void listenLogin(LoginState state) {
    if (state is LoginFailure) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Login failed"),
        backgroundColor: Colors.deepOrange,
      ));
    }
    if (state is LoginSuccess) {
      Navigator.pushNamed(context, 'home');
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(loginVieModelProvider, (_, state) {
      listenLogin(state);
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextFormField(
          controller: emailCtrl,
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Email',
            filled: true,
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
            fillColor: Colors.grey[200],
            contentPadding:
                const EdgeInsets.only(top: 24, bottom: 24, left: 32, right: 32),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.transparent),
              borderRadius: BorderRadius.circular(28),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.transparent),
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          controller: passwordCtrl,
          autofocus: false,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            hintText: 'Password',
            filled: true,
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
            fillColor: Colors.grey[200],
            contentPadding:
                const EdgeInsets.only(top: 24, bottom: 24, left: 32, right: 32),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.transparent),
              borderRadius: BorderRadius.circular(28),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.transparent),
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(top: 5, right: 16),
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(height: 24),
        LoginButtons(onPressed: () {
          ref
              .read(loginVieModelProvider.notifier)
              .login(emailCtrl.text, passwordCtrl.text);
        }),
        const LoginSocialButtons()
      ],
    );
  }
}
