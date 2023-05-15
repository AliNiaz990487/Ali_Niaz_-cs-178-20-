import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget listItem(IconData ic, String text){
    return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8, horizontal: 16
                      ),
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(width: 0.5),
                      ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Icon(
                              ic,
                              size: 20,
                              ),
                            const SizedBox(width: 10),
                            Text(
                              text,
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                              )
                          ],
                        ),
                    ),
                  );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                    ),
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.red,
                        size: 18,
                        ),
                    )
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/Ali.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2, 
            child: Center(
              child: Column(   
                children:[
                  const SizedBox(height: 30),
                  listItem(Icons.person_rounded, 'Username'),
                  // const SizedBox(height: 6),
                  listItem(Icons.date_range_outlined, 'Date of Birth'),
                  // const SizedBox(height: 6),
                  listItem(Icons.interpreter_mode_rounded, 'Gender'),
                  // const SizedBox(height: 6),
                  listItem(Icons.email_rounded, 'Email or Phone number'),
                  // const SizedBox(height: 6),
                  listItem(Icons.password_rounded, 'Password'),
                ]
              ),
            ), 
          ),
        ]),
      ),
    );
  }
}
