import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    List<String> answers = args["answers"];
    List<String> test = args["test"];
    int numberOfChapter = args ["numberOfChapter"];
    int result = 0;

    for (int i = 0; i < 15; i++) {
      if (answers[i] == test[((i + 1) * 6) + (90 * (numberOfChapter - 1)) - 1]) {
        ++result;
      }
    }

    double resultPercent = ((result/15) * 100);

    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF1D1C1C),
          colorScheme: const ColorScheme.dark(),
        ),
      home: Scaffold(
        body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top:30)),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Result.png'),
                          //fit: BoxFit.cover,
                        )
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top:45)),
                  //const Padding(padding: EdgeInsets.only(top:10)),
                  Expanded(
                    child: ListView(
                      children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                            "${resultPercent.toInt()}%",
                            style: const TextStyle(
                              color: Color(0xFFEEE8E8),
                              fontWeight: FontWeight.bold,
                              fontSize: 70,
                              fontFamily: "Arial",
                            ),
                          ),
                        SizedBox(
                        height: 310,
                        width: 310,
                            child: PieChart(
                              PieChartData(
                                  sections: [
                                    PieChartSectionData(
                                      showTitle: false,
                                      value: ((15 - result).toDouble()),
                                      color: Colors.black,
                                    ),
                                    PieChartSectionData(
                                      showTitle: false,
                                      value: result.toDouble(),
                                      color: Color(0xFF3FFC52),
                                    )
                                  ]
                              )
                          ),
                                          ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        const Text("Результат: ", style: const TextStyle(color: Color(0xFFEEE8E8), fontWeight: FontWeight.bold, fontSize: 25, fontFamily: "Arial",),),
                        Text("${resultPercent.toInt()}%", style: const TextStyle(color: Color(0xFFEEE8E8), fontWeight: FontWeight.bold, fontSize: 25, fontFamily: "Arial",),),
                      ]
                    ),
                    const Padding(padding: EdgeInsets.only(top: 25)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Ваша оценка: ", style: const TextStyle(color: Color(0xFFEEE8E8), fontWeight: FontWeight.bold, fontSize: 25, fontFamily: "Arial",),),
                        Text("${(resultPercent/10).round()}", style: const TextStyle(color: Color(0xFFEEE8E8), fontWeight: FontWeight.bold, fontSize: 25, fontFamily: "Arial",),),
                      ]
                    ),
                    const Padding(padding: EdgeInsets.only(top: 55)),
                    Column(
                      children: [
                    const Text("Поделиться: ", style: const TextStyle(color: Color(0xFFEEE8E8), fontWeight: FontWeight.bold, fontSize: 25, fontFamily: "Arial",),),
                    const Padding(padding: EdgeInsets.only(top: 5)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children : [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: FloatingActionButton.extended(
                            onPressed: () {
                              Share.share("Меня зовут - \n Моя оценка за лабораторную работу N${numberOfChapter} - ${(resultPercent/10).round()}");
                            },
                            shape: const StadiumBorder (
                              side: BorderSide(
                                width: 0,
                              ),
                            ),
                            label: Image.asset('assets/TelegramLogo.png'),
                            backgroundColor: Colors.white70,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: FloatingActionButton.extended(
                            onPressed: () {
                              Share.share("Меня зовут - \n Моя оценка за лабораторную работу N${numberOfChapter} - ${(resultPercent/10).round()}");
                            },
                            label: Image.asset('assets/VKLogo.png'),
                              backgroundColor: Color(0xFF1D1C1C),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: FloatingActionButton.extended(
                            onPressed: () {
                              Share.share("Меня зовут - \n Моя оценка за лабораторную работу N${numberOfChapter} - ${(resultPercent/10).round()}");
                            },
                            label: Image.asset('assets/InstagramLogo.png'),
                            backgroundColor: Color(0xFF1D1C1C),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: FloatingActionButton.extended(
                            onPressed: () {
                              Share.share("Меня зовут - \n Моя оценка за лабораторную работу N${numberOfChapter} - ${(resultPercent/10).round()}");
                            },
                            label: Image.asset('assets/TwitterLogo.png'),
                            backgroundColor: Color(0xFF1D1C1C),
                          ),
                        ),
                      ]
                    ),
                    ]
                  ),
                    //const Padding(padding: EdgeInsets.only(top: 10)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 45,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
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
                            const Padding(padding: EdgeInsets.only(left: 8)),
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
                  const Padding(padding: EdgeInsets.only(bottom: 15))
                ],
              ),
            ),
          ]
        )
        )
      )
    );
  }}