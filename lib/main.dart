// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int counter = 1; // Pindahkan ke dalam State agar tidak reset

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey,
//         appBar: AppBar(
//           title: Text("Menggunakan Stateful"),
//           centerTitle: true,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               counter.toString(),
//               style: TextStyle(
//                 fontSize: 20 + double.parse(counter.toString()),
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 // Button untuk tambah
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       counter++;
//                     });
//                   },
//                   child: Icon(Icons.add),
//                 ),

//                 // Button untuk kurang
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       if (counter != 1) {
//                         counter--;
//                       }
//                     });
//                   },
//                   child: Icon(Icons.remove),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan buat Statefull"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Angka saat ini: $counter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: Icon(Icons.remove))
              ],
            )
          ],
        ),
      ),
    );
  }
}
