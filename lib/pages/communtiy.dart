import 'package:flutter/material.dart';
import 'package:pawsitive_match/widgets/app_drawer.dart';
import 'package:pawsitive_match/widgets/appbar.dart';
import 'package:pawsitive_match/widgets/bottom_appbar.dart';
import 'package:pawsitive_match/widgets/theme.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: MyTheme.bgcolor,
      body: Center(child: Column(
        children: [Text("This the Community Page")],
      )),
      drawer: appDrawer(),
      bottomNavigationBar: bottomAppBarWidget(),
    );
  }
}