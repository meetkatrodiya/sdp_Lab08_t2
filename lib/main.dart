// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MaterialApp(home: MyHomePage()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   num age = 20.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightGreen[200],
//       appBar: AppBar(
//         title: Text('First App'),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue[600],
//         elevation: 0.0,
//       ),
//
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/dog.jpg'),
//             ),
//             Text(
//               'NAME: ',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Meet Katrodiya',
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 40),
//             Text(
//               'AGE',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//
//               '$age',
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 50),
//             Row(
//               children: [
//                 Icon(
//                   Icons.email_rounded,
//                   color: Colors.deepPurple[800],
//                 ),
//                 SizedBox(width: 12.0),
//                 Text(
//                   'MeetKatrodiya043@gmail.com',
//
//                   style: TextStyle(
//
//                     color: Colors.brown[800],
//                     fontSize: 16.0,
//                     letterSpacing: 1.5,
//
//                   ),
//                 ),
//                 // SizedBox(height: 10.0),
//                 // Text(
//                 // '$age',
//                 //   style: TextStyle(
//                 //     color:Colors.blue[900],
//                 //     letterSpacing: 2.0,
//                 //     fontWeight: FontWeight.bold,
//                 //     fontSize: 20.0,
//                 //   ),
//                 // ),
//
//               ],
//             )
//           ],
//         ),
//
//     ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
// // following can't changes the variables 'state' value
// // age++;
// // apply following code to change any state variable value
//           setState(() {
//             age += 1;
//           });
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.brown,
//       ),
//
//
//
//     );
//
//   }
// }

//page 5 code
// import 'package:flutter/material.dart';
// void main() => runApp(MaterialApp(
//   home: EchoList(),
// ));
// class EchoList extends StatefulWidget {
//   const EchoList({Key? key}) : super(key: key);
//   @override
//   State<EchoList> createState() => _EchoListState();
// }
// class _EchoListState extends State<EchoList> {
//   List<String> quotes = [
//     'The truth is realy pure and never simple',
//     'I see humans but no humanity',
//     'The time is always right to do what is right'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.limeAccent[100],
//       appBar: AppBar(
//         title: Text('Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.red,
//       ),
//
//       body: Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.center,
//         children: quotes.map((quote) => Text(quote)).toList(),
//       ),
//     );
//   }
// }

//page 6 code
// import 'package:flutter/material.dart';
//import 'package:lab8_2/quote.dart';
// import 'quote.dart'; // due to same directory file no need path
//
// void main() => runApp(MaterialApp(
//   home: EchoList(),
// ));
// class EchoList extends StatefulWidget {
//   const EchoList({Key? key}) : super(key: key);
//   @override
//   State<EchoList> createState() => _EchoListState();
// }
// class _EchoListState extends State<EchoList> {
// /*
// List<String> quotes = [
// 'The truth is realy pure and never simple',
// 'I see humans but no humanity',
// 'The time is always right to do what is right'
// ];
// // List<String> author = [];
// */
// /* this will create error..because list is now not of string....
// List<String> quotes = [
// Quote(text: 'The truth is realy pure and never simple',author:
// 'jignesh1'),
// ];
// */
//   List<Quote> quote = [
//     Quote(text: 'The truth is realy pure and never simple',author:
//     'jignesh1'),
//
//     Quote(author: 'jignesh2', text: 'I see humans but no humanity'),
//     Quote(text: 'The time is always right to do what is right',author:
//     'jignesh1'),
//   ];
//
//   Widget quoteTemplate(quote){
//     return Card(
//       margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 20,
//
//                 color: Colors.deepPurple,
//
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               quote.author,
//               style: TextStyle(
//                 fontSize: 26,
//
//                 color: Colors.deepPurple,
//
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }



//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: Colors.lightBlueAccent[100],
//         appBar: AppBar(
//           title: Text('Quotes'),
//           centerTitle: true,
//           backgroundColor: Colors.orangeAccent,
//         ),
//         body: Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.center,
//         children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
//     ),
//     );
//   }
// }


//lab 8 page  8,9,10

import 'package:flutter/material.dart';
//import 'package:lab8_2/quote.dart';
import 'quote.dart'; // due to same directory file no need path

void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {
/*
List<String> quotes = [
'The truth is realy pure and never simple',
'I see humans but no humanity',
'The time is always right to do what is right'
];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
List<String> quotes = [
Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
];
*/
  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple',author:
    'someone wise'),

    Quote(author: 'jignesh2', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'unknown'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,

                color: Colors.deepPurple,

              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,

                color: Colors.deepPurple,

              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}



