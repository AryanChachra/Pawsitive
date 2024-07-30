import 'package:flutter/material.dart';
import 'package:pawsitive_match/pages/auth_page.dart';
import 'package:pawsitive_match/pages/home_page.dart';
import 'package:pawsitive_match/pages/login_or_register_page.dart';
import 'package:pawsitive_match/pages/login_page.dart';
import 'package:pawsitive_match/pages/register_page.dart';
import 'package:pawsitive_match/pages/start_page.dart';
import 'package:pawsitive_match/pages/start_page1.dart';
import 'package:pawsitive_match/utils/routes.dart';
import 'package:pawsitive_match/widgets/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(pawsitiveMatch());

}


class pawsitiveMatch extends StatelessWidget {
  const pawsitiveMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => StartPage(),
        MyRoutes.startRoute: (context) => StartPage(),
        MyRoutes.startRouteNext: (context) => StartPage1(),
        MyRoutes.loginRoute: (context) => LoginPage(onTap: () {},),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.authRoute: (contet) => AuthPage(),
        MyRoutes.registerRoute: (context) => RegisterPage(onTap: () {},),
        MyRoutes.togglePages: (context) => LoginOrRegisterPage(),
      },
    );
  }
}
