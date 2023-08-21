import 'package:flutter/material.dart';
import 'screen/login/login_screen.dart';
import 'screen/register/register_screen.dart';
import 'screen/register/register_success_screen.dart';
import 'screen/password/forgot_password_screen.dart';
import 'screen/password/enter_otp_screen.dart';
import 'screen/password/reset_password_screen.dart';
import 'screen/password/reset_password_success.dart';
import 'screen/home/home_screen.dart';
import 'screen/user/edit_profile_screen.dart';
import 'screen/user/edit_password_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  RegisterSuccessScreen.routeName: (context) => const RegisterSuccessScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  EnterOtpScreen.routeName: (context) => const EnterOtpScreen(),
  ResetPasswordScreen.routeName: (context) => const ResetPasswordScreen(),
  ResetPaswordSuccess.routeName: (context) => const ResetPaswordSuccess(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  EditProfileScreen.routeName: (context) => const EditProfileScreen(),
  EditPasswordScreen.routeName: (context) => const EditPasswordScreen()
};
