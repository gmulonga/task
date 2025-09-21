import 'package:flutter/material.dart';
import 'package:task/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
                alignment: Alignment(0.55, 0.0),
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.15),
                  Colors.black,
                ],
                stops: [0.2, 1.0],
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'English (US)',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 2),
                  Text(
                    'Connect with\nyour community\nwherever you are',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomLoginButton(
                    label: "Continue with Apple ID",
                    icon: Icon(Icons.apple, size: 16),
                    backgroundColor: const Color(0xFF5925DC),
                    onPressed: () {
                    },
                  ),

                  const SizedBox(height: 8),
                  CustomLoginButton(
                    label: "Continue with Google",
                    icon: const Text(
                      "G",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: const Color(0xFF2E90FA),
                    onPressed: () {
                      // Handle Google login
                    },
                  ),

                  const SizedBox(height: 8),

                  CustomLoginButton(
                    label: "Continue with E-mail",
                    icon: const Icon(Icons.email_outlined, size: 16),
                    onPressed: () {
                    },
                    outlined: true,
                    textColor: Colors.white,
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'By signing up, you accept the Terms of Use and\nPrivacy Policy of how we process your data.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
