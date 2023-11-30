import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _State();
}

// class _State extends State<SettingsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           scaffoldBackgroundColor: Colors.black,
//           colorScheme: const ColorScheme.dark(),
//         ),
//       home: Scaffold(
//         body: SafeArea(
//           child: Container (
//             decoration: const BoxDecoration(
//               image: DecorationImage (
//                 image: AssetImage("assets/SettingsLogo.png"),
//                 fit: BoxFit.cover
//               ),
//             ),
//         child:  Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//             ],
//             )
//           ]
//         )
//           )
//       )
//       ),
//     );
//   }
class _State extends State<SettingsPage> {
  @override
  String selectedAnswers = "B";
  Widget build(BuildContext  context) {

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
                  Flexible(
                      child: Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(top:35)),
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
                          Flexible(
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("1", style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Arial", fontSize: 20),),
                                Flexible(
                                  child: Column(
                                    children: [
                                      RadioListTile(
                                        title: Text(
                                          "Answer",
                                          style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Arial", fontSize: 20),
                                        ),
                                        value: "A",
                                        groupValue: selectedAnswers,
                                        onChanged: (String? value) {
                                          setState(() {
                                            print (selectedAnswers);
                                            selectedAnswers = value!;
                                            print (selectedAnswers);
                                          });
                                        },
                                      ),
                                      RadioListTile(
                                        title: Text(
                                          "Answer",
                                          style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Arial", fontSize: 20),
                                        ),
                                        value: "B",
                                        groupValue: selectedAnswers,
                                        onChanged: (String? value) {
                                          setState(() {
                                            print (selectedAnswers);
                                            selectedAnswers = value!;
                                            print (selectedAnswers);
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                                    ],),
            )
                    ],
                        )
                    ),
            )
    )
            );

  }
}
