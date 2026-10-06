import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "playDice",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green, brightness: Brightness.dark)
        // colorScheme: ColorScheme(
          // brightness: Brightness.dark,
          // primary: Colors.red,
          // onPrimary: Colors.white,
          // secondary: secondary,
          // onSecondary: onSecondary,
          // error: error,
          // onError: onError,
          // surface: surface,
          // onSurface: onSurface,
        ),
      home: playDice(),
    );
  }
}

class playDice extends StatefulWidget{
  @override
  State<playDice> createState() => playDiceState();
}

class playDiceState extends State<playDice>{
  int value_1 = 1 ;
  int value_2 = 1 ;
  int total =2 ;

  void reset(){

    setState(
        (){
          value_1 = 1 ;
          value_2 =1 ;
          total =2 ;
        }
    );


  }

  void roll(){

    setState(() {
      value_1 = Random().nextInt(6)+1 ;
      value_2 = Random().nextInt(6)+1 ;
      total = value_1 + value_2 ;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello world'), backgroundColor:Theme.of(context).colorScheme.primary),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("total is $total"),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("$value_1"),
                SizedBox(width: 10,),
                Text("$value_2")
              ],
            ),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: ElevatedButton(onPressed: roll, child: Text("roll"))) ,
                  SizedBox(width:20),
                  Expanded(child: ElevatedButton(onPressed: reset , child: Text("reset")))
                ]),
          ],
        )

      )
    );
  }

}

// class playDice extends StatelessWidget {
//
//   int value_1 = 1 ;
//   int value_2 = 1 ;
//   int total =2 ;
//
//   void reset(){
//     value_1 = 1 ;
//     value_2 =1 ;
//     total =2 ;
//     print("we are in reset");
//   }
//
//   void roll(){
//     value_1 = Random().nextInt(6)+1 ;
//     value_2 = Random().nextInt(6)+1 ;
//     total = value_1 + value_2 ;
//     print("we are in roll");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('hello world'), backgroundColor:Theme.of(context).colorScheme.primary),
//       body: Center(
//         child:
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("total is $total"),
//             SizedBox(height: 50,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text("$value_1"),
//                 SizedBox(width: 10,),
//                 Text("$value_2")
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(child: ElevatedButton(onPressed: roll, child: Text("roll"))) ,
//                   SizedBox(width:20),
//                   Expanded(child: ElevatedButton(onPressed: reset , child: Text("reset")))
//                 ]),
//           ],
//         )
//
//       )
//     );
//   }
// }
