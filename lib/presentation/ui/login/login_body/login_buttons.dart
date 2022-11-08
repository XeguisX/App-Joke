import 'package:flutter/material.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              side: const BorderSide(width: 3),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.only(
                left: 134,
                right: 134,
                top: 22,
                bottom: 22,
              ),
            ),
            child: const Text(
              'Log In',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'or',
            style:
                TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
