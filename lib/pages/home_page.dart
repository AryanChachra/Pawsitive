import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawsitive_match/pages/auth_page.dart';
import 'package:pawsitive_match/pages/login_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  void signUserOut(BuildContext context) {
    FirebaseAuth.instance.signOut().then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthPage(),),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed:() =>signUserOut(context), icon: Icon(Icons.logout),),],),
      body: Center(
        child: Column(
          children: [
            Text("Logged in as: ${user?.email}", style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
