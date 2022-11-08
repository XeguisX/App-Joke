import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.52,
              // color: Colors.redAccent,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: AssetImage('assets/joke_logo.png'),
                    width: 320,
                  ),
                ),
              ),
            ),
            _WelcomeContent(size: size),
          ],
        ),
      ),
    );
  }
}

class _WelcomeContent extends StatelessWidget {
  const _WelcomeContent({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.48,
      // color: Colors.redAccent,
      decoration: const BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(42),
            topRight: Radius.circular(42),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(5, 5),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ]),
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Cillum deserunt laboris ipsum ex ea ea sit mollit ex voluptate aliqua et culpa.'
                'Cillum deserunt laboris ipsum ex ea ea sit mollit ex voluptate aliqua et culpa.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 44),
              _WelcomeButtons(),
            ],
          )),
    );
  }
}

class _WelcomeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Login Button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            side: const BorderSide(width: 3),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.only(
              left: 48,
              right: 48,
              top: 20,
              bottom: 20,
            ),
          ),
          onPressed: () => Navigator.pushNamed(context, 'login'),
          child: const Text(
            'Log In',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 16),
        //Sign Up Button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            side: const BorderSide(width: 3, color: Colors.white),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.only(
              left: 48,
              right: 48,
              top: 20,
              bottom: 20,
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
