import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pawsitive_match/pages/start_page1.dart';
import 'package:pawsitive_match/widgets/theme.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );

    // Define the animation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
    );

    // Start the animation
    _controller.forward();

    // Navigate to the next page after the animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => StartPage1(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.logocolor,
      ),
      backgroundColor: MyTheme.logocolor,
      body: Column(
        children: [
          Image.asset("assets/images/pawsitive.jpg"),
        ],
      ),
    );
  }
}

