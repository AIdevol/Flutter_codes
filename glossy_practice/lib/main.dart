// import 'package:flutter/material.dart';
// import 'package:glossy/glossy.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           title: const Text('Glass Morphism Example'),
//         ),
//         body: Center(
//           child: SizedBox(
//             width: 300,
//             height: 300,
//             child: Stack(
//               children: [
//                 Container(
//                   height: 140,
//                   width: 140,
//                   decoration: (BoxDecoration(
//                       color: Colors.purple,
//                       borderRadius: BorderRadius.circular(70))),
//                 ),
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: Container(
//                     height: 140,
//                     width: 140,
//                     decoration: (BoxDecoration(
//                         color: Colors.purple,
//                         borderRadius: BorderRadius.circular(70))),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: GlossyContainer(
//                     width: 200,
//                     height: 200,
//                     borderRadius: BorderRadius.circular(12),
//                     child: const Center(
//                       child: Text(
//                         'Glass Morphism',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:glossy/glossy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Glass Morphism Login'),
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 400,
            child: Stack(
              children: [
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: GlossyContainer(
                    width: 300,
                    height: 400,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.white70),
                              filled: true,
                              fillColor: Colors.white24,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white70),
                              filled: true,
                              fillColor: Colors.white24,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
