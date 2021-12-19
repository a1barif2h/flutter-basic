import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chate/routes.dart';
import 'package:flash_chate/screens/chat_screen.dart';
import 'package:flash_chate/screens/login_screen.dart';
import 'package:flash_chate/screens/registration_screen.dart';
import 'package:flash_chate/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => WelcomeScreen(),
        Routes.login: (context) => LoginScreen(),
        Routes.registration: (context) => RegistrationScreen(),
        Routes.chat: (context) => ChatScreen()
      },
    );
  }
}
