import 'package:flutter/material.dart';
import '../../../Widgets/Widgets.dart';

class HomePage extends StatelessWidget {
  int numberOfChapter = 0;
  List<String> theory= ["Theory 1","Theory 2"];
  List<String> test= ["Question","Answer 1", "Answer 2", "Answer 3", "Answer 4", "Answer 5", "GoodAnswer"];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            colorScheme: const ColorScheme.dark()
        ),
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
                              width: 275,
                              height: 191,
                              decoration: const BoxDecoration(
                                image: DecorationImage (
                                  image: AssetImage('assets/Naming.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 69)),
                            SizedBox(
                              width: 245,
                              height: 111,
                              child: FloatingActionButton.extended(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/Chapters', arguments: {"numberOfChapter" : numberOfChapter, "theory" : theory, "test" : test});
                                },
                                focusColor: Colors.deepPurpleAccent,
                                shape: StadiumBorder (
                                  side: BorderSide(
                                    width: 3,
                                    color: Colors.deepPurpleAccent!,
                                  ),
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Stack (
                                    children: <Widget> [
                                      Text(
                                        "ГЛАВЫ",
                                        style: TextStyle(
                                          fontSize: 50,
                                          fontFamily: 'LucGay',
                                          letterSpacing: 3,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 5
                                            ..color = Colors.black,
                                        ),
                                      ),
                                      const Text(
                                        "ГЛАВЫ",
                                        style: TextStyle(
                                          fontSize: 50,
                                          fontFamily: 'LucGay',
                                          letterSpacing: 3,
                                          textBaseline: TextBaseline.ideographic,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                backgroundColor: Colors.white70,
                              ),
                            ),

                            const Padding(padding: EdgeInsets.only(top: 75)),
                            SizedBox(
                              width: 245,
                              height: 111,
                              child: FloatingActionButton.extended(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/Settings');
                                },
                                focusColor: Colors.deepPurpleAccent,
                                shape: StadiumBorder (
                                  side: BorderSide(
                                    width: 3,
                                    color: Colors.deepPurpleAccent!,
                                  ),
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Stack (
                                    children: <Widget> [
                                      Text(
                                        "НАСТРОЙКИ",
                                        style: TextStyle(
                                          fontSize: 35,
                                          fontFamily: 'LucGay',
                                          letterSpacing: 3,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 5
                                            ..color = Colors.black,
                                        ),
                                      ),
                                      const Text(
                                        "НАСТРОЙКИ",
                                        style: TextStyle(
                                          fontSize: 35,
                                          fontFamily: 'LucGay',
                                          letterSpacing: 3,
                                          textBaseline: TextBaseline.ideographic,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                backgroundColor: Colors.white70,
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 80)),
                          ],
                        )
                      ]
                  ),
                )
            ))
    );
  }
}