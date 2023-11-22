import 'package:community_hub/constants/colors.dart';
import 'package:community_hub/home/home.dart';
import 'package:community_hub/widgets/custom_button.dart';
import 'package:community_hub/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              const Text(
                'Login to your account',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(child: Container()),
              const Icon(
                Icons.lock_open_rounded,
                color: greenColor,
                size: 200,
              ),
              CustomTextField(
                title: 'Email',
                controller: _emailController,
                hidePassword: false,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                title: 'Password',
                controller: _passwordController,
                hidePassword: true,
              ),
              Expanded(child: Container()),
              CustomButtom(
                  action: 'Login',
                  nav: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  }),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
