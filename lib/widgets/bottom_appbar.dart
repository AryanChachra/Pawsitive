import 'package:flutter/material.dart';
import 'package:pawsitive_match/utils/routes.dart';
import 'package:pawsitive_match/widgets/theme.dart';

class bottomAppBarWidget extends StatefulWidget {
  const bottomAppBarWidget({super.key});

  @override
  State<bottomAppBarWidget> createState() => _bottomAppBarWidgetState();
}

class _bottomAppBarWidgetState extends State<bottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: MyTheme.bgcolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            icon: Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.petlistRoute);
            },
            icon: Icon(Icons.pets),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.communityRoute);
            },
            icon: Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.settingsRoute);
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
