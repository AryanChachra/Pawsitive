import 'package:flutter/material.dart';
import 'package:pawsitive_match/widgets/app_drawer.dart';
import 'package:pawsitive_match/widgets/appbar.dart';
import 'package:pawsitive_match/widgets/theme.dart';
import '../widgets/bottom_appbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(),
      backgroundColor: MyTheme.bgcolor,
      body: Center(
        child: Column(
          children: [
            Text("This is the Home Page"),
          ],
        ),
      ),
          drawer: appDrawer(),
          bottomNavigationBar: bottomAppBarWidget(),
    );
  }
}
