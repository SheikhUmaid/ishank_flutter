// import 'package:flutter/material.dart';

// class MyCounter extends StatefulWidget {
//   const MyCounter({super.key});

//   @override
//   State<MyCounter> createState() => _MyCounterState();
// }

// class _MyCounterState extends State<MyCounter> {
//   int _counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     debugPrint("Build called");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Counter App"),
//         elevation: 0,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("The Counter tapped time \n $_counter"),
//           ],
//         ),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           IconButton(
//             onPressed: () {
//               _counter++;
//               setState(() {});
//             },
//             icon: Icon(Icons.add),
//           ),
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 _counter = 0;
//               });
//             },
//             icon: Icon(Icons.reset_tv),
//           ),
//           IconButton(
//             onPressed: () {
//               _counter--;
//               setState(() {});
//             },
//             icon: Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }
