import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'blog.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyC5vZHLLSMwqUdWdrlFPgUDtlXCIHfEpGA',
    appId: '1:955917063587:web:f5fbb0d49c90666b333616',
    messagingSenderId: '955917063587',
    projectId: 'my-portfolio-91fe6',
    authDomain: 'my-portfolio-91fe6.firebaseapp.com',
    databaseURL: 'https://my-portfolio-91fe6-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'my-portfolio-91fe6.appspot.com',
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFF5A2E9),
          onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => blog()),)},
          child: const Icon(Icons.note_alt_sharp),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img.jpg"), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const CircleAvatar(
                                radius: 110,
                                backgroundColor: Colors.pinkAccent,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("img.png"),
                                  radius: 100,
                                )),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FloatingActionButton(
                                  onPressed: () => {html.window.open(
                                      'https://github.com/RidmiSilva',
                                      "_blank")
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Image.asset('github.webp'),
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.indigo,
                                  onPressed: () => {
                                    html.window.open(
                                        'https://www.linkedin.com/in/ridmi-silva-b25620269',
                                        "_blank")
                                  },
                                  child: const Text(
                                    'in',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: '',
                                      fontSize: 35,
                                    ),
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    Clipboard.setData(const ClipboardData(text: "ridmisilva103@gmail.com"));
                                    const snackBar = SnackBar(content: Text("Mail copied to clipboard",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: "PatrickHand",
                                      fontSize: 18
                                    ),),
                                        backgroundColor: Colors.teal);

                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    // copied successfully
                                  },
                                  child: const Icon(Icons.mail_outlined),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(50),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: const [
                              Text(
                                "Ridmi Silva...",
                                style: TextStyle(
                                  fontFamily: "DancingScript",
                                  fontSize: 90,
                                  color: Colors.pink,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'I am a first year student at University of Westminster studying Computer Science with career interest in developing mobile applications.I love to learn and try new things that help me to improve my knowledge about new technology.',
                                style: TextStyle(
                                    fontFamily: "PatrickHand",
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 200),
                      child: TabBar(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        automaticIndicatorColorAdjustment: false,
                        labelColor: Colors.pink,
                        unselectedLabelColor: Colors.white60,
                        indicator: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(50), // Creates border
                            color: const Color(0xFF0E207A)),
                        tabs: const [
                          Tab(
                            icon: Icon(Icons.person),
                          ),
                          Tab(
                            icon: Icon(Icons.dataset_rounded),
                          ),
                          Tab(
                            icon: Icon(Icons.contact_support_outlined),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: width,
                      height: 375,
                      child: TabBarView(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFBE5E7D),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: width / 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.account_balance_sharp),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('University of Westminster')
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.school_outlined),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('Computer Science')
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.bookmark_border),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('Undergraduate')
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.timelapse),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('Fresher')
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.calculate_outlined),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text("Swarnamali Girls' Collage"),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.location_on_outlined),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('Kandy')
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.flag),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text("Sri Lanka"),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.location_city),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('Kandy')
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                          // 2nd tab
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFBE5E7D),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: width / 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.star),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('Java')
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.star),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('Python')
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.star),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('Dart')
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.star),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('Flutter'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.star),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text("Firebase"),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.star),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('MySQL')
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          // 3nd tab
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFBE5E7D),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: width / 10),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.phone),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text("+94740056202"),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Card(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10,
                                                      horizontal: 15),
                                                  child: Row(
                                                    children: const [
                                                      Icon(Icons
                                                          .alternate_email_outlined),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                          'ridmisilva130@gmail,com')
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
