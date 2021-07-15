import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

User? loggedInUser;

class ResetPasswordScreen extends StatefulWidget {
  static const String id = 'reset_password_screen';

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _auth = FirebaseAuth.instance;
  String? newPassword;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Re-set password'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20.0,),
          TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newPassword = value;
            },
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter new password'
            ),
          ),
      RoundedButton(
        colour: Colors.teal.shade400,
        title: 'Set password',
        onPressed: (){
          try {
            loggedInUser!.updatePassword(newPassword!);
            Navigator.pop(context);
          }catch(e){
            print(e);
          }
        },
      ),
        ],
      ),
    );
  }
}
