import 'package:device_monitor/Themes/themes.dart';
import 'package:device_monitor/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  Future<UserCredential> _signIn(String mail, String password) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    try {
      UserCredential _user = await auth.signInWithEmailAndPassword(
        email: mail,
        password: password,
      );

      return _user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn'),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(
                    mainAxisSize: mainAxisMax,
                    mainAxisAlignment: mainAlignCenter,
                    crossAxisAlignment: crossAlignCenter,
                    children: [
                      textField(
                          context, 'Email', TextInputType.emailAddress, false),
                      textField(context, 'Password',
                          TextInputType.visiblePassword, true),
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Something went Wrong.\nPlease try again Latter.'),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
