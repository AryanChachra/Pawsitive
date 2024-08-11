import 'package:flutter/material.dart';
import 'package:pawsitive_match/utils/routes.dart';
import 'package:pawsitive_match/widgets/theme.dart';



class StartPage1 extends StatelessWidget {
  const StartPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.logocolor,
      body: Column(
        children: [
          SizedBox(height: 200,),
          Center(child: Image.asset('assets/images/fishbowl.png'),),
          SizedBox(height: 20,),
          Text('  Find Your\nCompanion', style: TextStyle( fontWeight: FontWeight.w300, fontSize: 42,)),
          SizedBox(height: 90,),
          ElevatedButton(

            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.loginRoute,);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black, shadowColor: Colors.black, elevation: 25, padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20)),
            child: Text('Get Started',style: TextStyle(color: MyTheme.logocolor, fontSize: 18, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}

