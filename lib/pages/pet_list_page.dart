import 'package:flutter/material.dart';
import 'package:pawsitive_match/widgets/app_drawer.dart';
import 'package:pawsitive_match/widgets/appbar.dart';
import 'package:pawsitive_match/widgets/bottom_appbar.dart';
import 'package:pawsitive_match/widgets/theme.dart';

class PetListPage extends StatefulWidget {
  const PetListPage({super.key});

  @override
  State<PetListPage> createState() => _PetListPageState();
}

class _PetListPageState extends State<PetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: MyTheme.bgcolor,
      body: Center(
        child: Column(
          children: [
            Text("This is the Pet List Page"),
          ],
        ),
      ),
      drawer: appDrawer(),
      bottomNavigationBar: bottomAppBarWidget(),
    );
  }
}
