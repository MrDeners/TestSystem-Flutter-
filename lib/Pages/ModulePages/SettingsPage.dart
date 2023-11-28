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
  Widget build(BuildContext  context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.dark(),
        ),
       home: Scaffold(
       body: SafeArea (
       child: Container (
           decoration: const BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/Background.png'),
                 fit: BoxFit.cover,
               )
           ),
       child : Row(
           mainAxisAlignment: MainAxisAlignment.center,
       children : [
         Expanded(
         child : ListView(
            children: [
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
              Text('2', style: TextStyle(fontSize: 200),),
            ]
        )
         )
           ]
       )
       )
       )
       )

    );

  }
//   @override
//   Widget build(BuildContext context) {
//     return
}
