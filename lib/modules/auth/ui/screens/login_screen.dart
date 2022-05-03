import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen(): super(key: null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SafeArea(
        child: Text('Login'),
      ),
    );
  }
}
