import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:locus_stalker/screens/about_screen.dart';
import 'package:locus_stalker/screens/add_member_screen.dart';
import 'package:locus_stalker/screens/group_member.dart';
import 'package:locus_stalker/screens/map_screen.dart';
import 'package:locus_stalker/screens/profile_screen.dart';
import 'package:locus_stalker/screens/registration_screen.dart';
import 'package:locus_stalker/screens/reset_password_screen.dart';
import 'package:locus_stalker/screens/search_screen.dart';
import 'package:locus_stalker/screens/welcome_screen.dart';
import '../screens/login_screen.dart';
import '../screens/group_screen.dart';
import '../screens/map_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(LocusStalker());
}

class LocusStalker extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        GroupScreen.id: (context) => GroupScreen(),
        MapScreen.id: (context) => MapScreen(),
        ResetPasswordScreen.id: (context) => ResetPasswordScreen(),
        SearchScreen.id: (context) => SearchScreen(),
        GroupMemberScreen.id: (context) => GroupMemberScreen(),
        AddMemberScreen.id:(context) => AddMemberScreen(),
        ProfileScreen.id:(context) => ProfileScreen(),
        AboutScreen.id:(context) => AboutScreen(),
      },
    );
  }
}

