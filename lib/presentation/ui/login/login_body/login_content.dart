import 'package:app_joke/presentation/ui/login/login_body/login_form.dart';
import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.62,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(42),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(5, 5),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
