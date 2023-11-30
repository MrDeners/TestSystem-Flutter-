import 'package:flutter/material.dart';
import '../../../Widgets/Widgets.dart';

class TestPage extends StatefulWidget {
  const TestPage ({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  late Future<void> initialization;
  late Map<String, dynamic> args;
  late int numberOfChapter;
  late List<String> test;
  List<String> selectedAnswers = ["E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E",];
  int testIterator = 0;
  int numberOfQuestion = 0;
  String result = "B";

  @override
  void initState() {
    super.initState();
    initialization = initialize();
  }

  Future<void> initialize() async {
    await Future.delayed(Duration.zero);
    args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    numberOfChapter = args["numberOfChapter"];
    test = args["test"];
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: initialization,
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF1D1C1C),
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
            Expanded(
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(top:35)),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Test.png'),
                              //fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Flexible (
                        child : Padding (
                          padding: const EdgeInsets.all(20),
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[Colors.white, Colors.transparent],
                                stops: <double>[0.95, 1],
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.dstIn,
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return const LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: <Color>[Colors.white, Colors.transparent],
                                  stops: <double>[0.973, 1],
                                ).createShader(bounds);
                              },
                              blendMode: BlendMode.dstIn,
                              child: ListView.builder(
                                itemCount: 15,
                                itemBuilder: (context, numberOfQuestion) {
                                   return Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(padding: EdgeInsets.only(top: 10)),
                                                Text("${numberOfQuestion + 1}. ${test[((numberOfChapter - 1) * 6) + (testIterator)]}",
                                                  style: const TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontFamily: "Arial",
                                                      fontSize: 20),),
                                                RadioListTile( //first answer
                                                  activeColor: const Color(0xFF8F00FF),
                                                  fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                                      if (states.contains(MaterialState.selected)) {
                                                        return const Color(0xFF8F00FF);
                                                      }
                                                      return const Color(0xFF3FFC52);
                                                    },
                                                  ),
                                                  overlayColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                                      if (states.contains(MaterialState.hovered)) {
                                                        return Colors.white;
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  splashRadius: 15,
                                                  visualDensity: VisualDensity.comfortable,
                                                  title: Text(
                                                    test[((numberOfChapter - 1) * 6) + (testIterator * numberOfQuestion + 1)],
                                                    style: const TextStyle(
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: "Arial",
                                                        fontSize: 20),
                                                  ),
                                                  value: "A",
                                                  groupValue: selectedAnswers[numberOfQuestion],
                                                  onChanged: (String? value) {
                                                    setState(() {

                                                      selectedAnswers[numberOfQuestion] = value!;
                                                    });
                                                  },
                                                ),


                                                RadioListTile( //first answer
                                                  activeColor: const Color(0xFF8F00FF),
                                                  fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.selected)) {
                                                      return const Color(0xFF8F00FF);
                                                    }
                                                    return const Color(0xFF3FFC52);
                                                  },
                                                  ),
                                                  overlayColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.hovered)) {
                                                      return Colors.white;
                                                    }
                                                    return null;
                                                  },
                                                  ),
                                                  splashRadius: 15,
                                                  visualDensity: VisualDensity.comfortable,
                                                  title: Text(
                                                    test[((numberOfChapter - 1) * 6) + (testIterator * numberOfQuestion + 2)],
                                                    style: const TextStyle(
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: "Arial",
                                                        fontSize: 20),
                                                  ),
                                                  value: "B",
                                                  groupValue: selectedAnswers[numberOfQuestion],
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      selectedAnswers[numberOfQuestion] = value!;
                                                    });
                                                  },
                                                ),

                                                RadioListTile( //first answer
                                                  activeColor: const Color(0xFF8F00FF),
                                                  fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.selected)) {
                                                      return const Color(0xFF8F00FF);
                                                    }
                                                    return const Color(0xFF3FFC52);
                                                  },
                                                  ),
                                                  overlayColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.hovered)) {
                                                      return Colors.white;
                                                    }
                                                    return null;
                                                  },
                                                  ),
                                                  splashRadius: 15,
                                                  visualDensity: VisualDensity.comfortable,
                                                  title: Text(
                                                    test[((numberOfChapter - 1) * 6) + (testIterator * numberOfQuestion + 3)],
                                                    style: const TextStyle(
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: "Arial",
                                                        fontSize: 20),
                                                  ),
                                                  value: "C",
                                                  groupValue: selectedAnswers[numberOfQuestion],
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      selectedAnswers[numberOfQuestion] = value!;
                                                    });
                                                  },
                                                ),

                                                RadioListTile( //first answer
                                                  activeColor: const Color(0xFF8F00FF),
                                                  fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.selected)) {
                                                      return const Color(0xFF8F00FF);
                                                    }
                                                    return const Color(0xFF3FFC52);
                                                  },
                                                  ),
                                                  overlayColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.hovered)) {
                                                      return Colors.white;
                                                    }
                                                    return null;
                                                  },
                                                  ),
                                                  splashRadius: 15,
                                                  visualDensity: VisualDensity.comfortable,
                                                  title: Text(
                                                    test[((numberOfChapter - 1) * 6) + (testIterator * numberOfQuestion + 4)],
                                                    style: const TextStyle(
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: "Arial",
                                                        fontSize: 20),
                                                  ),
                                                  value: "D",
                                                  groupValue: selectedAnswers[numberOfQuestion],
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      selectedAnswers[numberOfQuestion] = value!;
                                                    });
                                                  },
                                                ),
                                                const Padding(padding: EdgeInsets.only(bottom: 10)),
                                              ],
                                            ),
                                          ),
                                        ]
                                    );


                                }
                              ),
                            ),
                          ),
                        )
                    ),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Result', arguments: {"answers" : selectedAnswers, "test" : test, "numberOfChapter" : numberOfChapter});
                        },
                        focusColor: Colors.deepPurpleAccent,
                        shape: StadiumBorder (
                          side: BorderSide(
                            width: 3,
                            color: Colors.deepPurpleAccent!,
                          ),
                        ),
                        label: Row (
                            children : [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Stack (
                                  children: <Widget> [
                                    Text(
                                      "ДАЛЕЕ",
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
                                      "ДАЛЕЕ",
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
                              Padding(padding: EdgeInsets.only(left: 8)),
                              Container(
                                height: 26,
                                width: 19,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/Arrow.png'),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                            ]
                        ),
                        //icon: Icon(Icons.arrow, size: 30, color: Colors.deepPurple,),
                        backgroundColor: Colors.lightGreenAccent[400]!,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom:15)),
                  ],
                )
            )
          ]
        ),
      ),
    ),
      ),
    );
      } else {
        return const CircularProgressIndicator();
      }
        },
    );
  }
}



