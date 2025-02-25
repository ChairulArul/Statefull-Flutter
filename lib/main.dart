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
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan buat Statefull"),
//           centerTitle: true,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Text(
//               "Angka saat ini: $counter",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         counter++;
//                       });
//                     },
//                     child: Icon(Icons.add)),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         counter--;
//                       });
//                     },
//                     child: Icon(Icons.remove))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Belajar maaping list

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// membuat mapping data untuk di panggil pada listView
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Chairul",
      "Age": 19,
      "FavProgramming": [
        "Javascript",
        "Python",
        "Dart",
        "Python",
        "Dart",
        "Python",
        "Dart",
        "Python",
        "Dart"
      ]
    },
    {
      "Name": "Ngabbrull",
      "Age": 20,
      "FavProgramming": ["TypeScript", "Golang", "C++"]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Text(
              "Belajar mapping list",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: ListView(
            children: myList.map((data) {
              // tampung dalam variabel untuk panggil mapping data
              List myFavProgramming = data["FavProgramming"];
              return Card(
                margin: EdgeInsets.all(25),
                color: Colors.black12.withOpacity(0.1),

                // ambil mapping dari data name dan age
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // row
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 10,
                            height: 65,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name : ${data['Name']}"),
                              Text("Age ${data['Age']}")
                            ],
                          )
                        ],
                      ),

                      // ganti menjadi ini, agar secara defaul dapat scroll secara horizontal
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // ambil mapping untuk row pada bagian myfav programming
                          children: myFavProgramming.map((coding) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              padding: EdgeInsets.all(5),
                              color: Colors.deepOrangeAccent,
                              child: Text(coding),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          )),
    );
  }
}
