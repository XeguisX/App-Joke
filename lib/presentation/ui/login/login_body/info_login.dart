import 'package:flutter/material.dart';

class InfoLogin extends StatelessWidget {
  const InfoLogin({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.28,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10),
            Text(
              'Log In',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            Text(
              'Cillum deserunt laboris ipsum ex ea ea sit mollit ex voluptate aliqua et culpa.'
              'Cillum deserunt laboris ipsum ex ea ea sit mollit ex voluptate aliqua et culpa.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
