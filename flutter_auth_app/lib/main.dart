import 'package:flutter/material.dart';
import 'package:flutter_auth_app/Screens/forgot_password.dart';
import 'package:flutter_auth_app/Screens/home_screen.dart';
import 'package:flutter_auth_app/Screens/login_screen.dart';
import 'package:flutter_auth_app/Screens/signup.dart';
import 'package:flutter_auth_app/Utilities/routes.dart';
import 'package:http/http.dart' as http;

void main() => runApp(AuthApp());

class AuthApp extends StatelessWidget {
  const AuthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        MyRoutes.homeScreen: (context) => HomeScreen(),
        MyRoutes.loginScreen: (context) => LoginScreen(),
        MyRoutes.signUp: (context) => SignUp(),
        MyRoutes.forgotPassword: (context) => ForgotPassword(),
      },
    );
  }
}
