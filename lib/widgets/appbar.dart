import 'package:flutter/material.dart';
import 'package:pawsitive_match/widgets/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyTheme.bgcolor,
      title: Row(
        children: [
          Image.asset(
            'assets/images/pawsitivelogo.png',
            fit: BoxFit.contain,
            height: 32,

          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
