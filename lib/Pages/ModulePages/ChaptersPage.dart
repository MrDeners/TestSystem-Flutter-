import 'package:flutter/material.dart';

class ChaptersPage extends StatelessWidget {
  const ChaptersPage ({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    int numberOfChapter = args['numberOfChapter'];
    List<String> theory = args["theory"];
    List<String> test = args["test"];
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
                          Container (
                            height: 75,
                            width: 355,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Chapters.png'),
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top:60)),
                          SizedBox(
                            width: 320,
                            height: 138,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                numberOfChapter = 1;
                                Navigator.pushNamed(context, '/Theory', arguments: {"numberOfChapter" : numberOfChapter, "theory" : theory, "test" : test});
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
                                      "ПРОИЗВОДСТВЕННАЯ \n САНИТАРИЯ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontFamily: 'LucGay',
                                        letterSpacing: 3,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 5
                                          ..color = Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      "ПРОИЗВОДСТВЕННАЯ \n САНИТАРИЯ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25,
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
                          const Padding(padding: EdgeInsets.only(top:35)),
                          SizedBox(
                            width: 320,
                            height: 138,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                numberOfChapter = 2;
                                Navigator.pushNamed(context, '/Theory', arguments: {"numberOfChapter" : numberOfChapter, "theory" : theory, "test" : test});
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
                                      "ПРОИЗВОДСТВЕННОЕ \n ОСВЕЩЕНИЕ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontFamily: 'LucGay',
                                        letterSpacing: 3,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 5
                                          ..color = Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      "ПРОИЗВОДСТВЕННОЕ \n ОСВЕЩЕНИЕ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25,
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
                          const Padding(padding: EdgeInsets.only(top:40)),
                          SizedBox(
                            width: 320,
                            height: 138,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                numberOfChapter = 3;
                                Navigator.pushNamed(context, '/Theory', arguments: {"numberOfChapter" : numberOfChapter, "theory" : theory, "test" : test});
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
                                      "ОПАСНОСТЬ \n В СЕТЯХ",
                                      textAlign: TextAlign.center,
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
                                      "ОПАСНОСТЬ \n В СЕТЯХ",
                                      textAlign: TextAlign.center,
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
                          const Padding(padding: EdgeInsets.only(top:40)),
                          SizedBox(
                            width: 320,
                            height: 138,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                numberOfChapter = 4;
                                Navigator.pushNamed(context, '/Theory', arguments: {"numberOfChapter" : numberOfChapter, "theory" : theory, "test" : test});
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
                        ],
                      ),
                    ],
                  ),
                ),
            ),
        ),
    );
  }
}
