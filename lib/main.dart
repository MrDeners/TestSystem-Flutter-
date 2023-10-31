import 'package:flutter/material.dart';

void main () => runApp(const MaterialApp(
    home: HomePage()
));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(
      colorScheme: const ColorScheme.dark()),
        home: const Scaffold(
          body: SafeArea(
            child: Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage('assets/Naming.png')),
                    Text("Hello"),
                  ],
                )
              ]
            ),
            )

          )
        );

  }
}