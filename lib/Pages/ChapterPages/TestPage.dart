import 'package:flutter/material.dart';
import '../../../Widgets/Widgets.dart';

class TestPage extends StatelessWidget {
  const TestPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(),
      ),
      home: Scaffold (
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/IndustrialSanitation.png'),
                fit: BoxFit.cover,
              )
            ),
            child: Row (

            )
          )
        ),
      )
    );
  }
}

