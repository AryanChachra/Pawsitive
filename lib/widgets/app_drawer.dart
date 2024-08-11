import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawsitive_match/pages/auth_page.dart';
import 'package:pawsitive_match/widgets/theme.dart';

class appDrawer extends StatelessWidget {
  appDrawer({super.key});

  final user = FirebaseAuth.instance.currentUser;

  void signUserOut(BuildContext context) {
    FirebaseAuth.instance.signOut().then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AuthPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: MyTheme.logocolor,
        child: Column(
          children: [
            Expanded(
              child: Column(
                  children: [
                    SizedBox(height: 200,),
                    IconButton(
                      onPressed: () => signUserOut(context),
                      icon: Icon(Icons.logout),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
