import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            colorScheme: const ColorScheme.dark()),
        home:  Scaffold(
            body:  SafeArea(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 346,
                              height: 100,
                              decoration: const BoxDecoration(
                                image: DecorationImage (
                                  image: AssetImage('assets/Naming.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 100)),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 245,
                                height: 111,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/TheoryButton.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 45)),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  width: 245,
                                  height: 111,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/CalculatorButton.png'),
                                        fit: BoxFit.cover,
                                      )
                                  )
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 45)),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 245,
                                height: 111,
                                decoration: const BoxDecoration(
                                  image: DecorationImage (
                                      image: AssetImage('assets/TestsButton.png')
                                  ),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 45)),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 245,
                                height: 111,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/SettingsButton.png')
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ]
                  ),
                )

            ))
    );

  }
}