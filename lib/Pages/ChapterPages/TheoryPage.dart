import 'package:flutter/material.dart';
import '../../../Widgets/Widgets.dart';

class TheoryPage extends StatelessWidget {
  const TheoryPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.dark(),
      ),
        home: Scaffold(
          body: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Background.png'),
                  fit: BoxFit.cover,
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.only(top:30)),
                      Container(
                        height: 45,
                        width: 250,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/IndustrialSanitation.png'),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top:29)),
                      Expanded (
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
                           child: ListView(
                        children : const [
                        SizedBox(
                          width: 380,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "        Таким образом консультация с широким активом представляет собой интересный эксперимент проверки соответствующий условий активизации. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание дальнейших направлений развития. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности требуют от нас анализа направлений прогрессивного развития. Таким образом укрепление и развитие структуры влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Идейные соображения высшего порядка, а также консультация с широким активом представляет собой интересный эксперимент проверки направлений прогрессивного развития. Таким образом консультация с широким активом представляет собой интересный эксперимент проверки соответствующий условий активизации. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание дальнейших направлений развития. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности требуют от нас анализа направлений прогрессивного развития. Таким образом укрепление и развитие структуры влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Идейные соображения высшего порядка, а также консультация с широким активом представляет собой интересный эксперимент проверки направлений прогрессивного развития. Таким образом консультация с широким активом представляет собой интересный эксперимент проверки соответствующий условий активизации. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание дальнейших направлений развития. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности требуют от нас анализа направлений прогрессивного развития. Таким образом укрепление и развитие структуры влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Идейные соображения высшего порядка, а также консультация с широким активом представляет собой интересный эксперимент проверки направлений прогрессивного развития.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ]
                          ),
                        ),
                      //  ),
                        ],
                      ),
                      )
                      ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 45,
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Test');
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
                ],
              ),
            ),

          )
        )
    );
  }
}