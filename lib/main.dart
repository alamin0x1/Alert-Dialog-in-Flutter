import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: TextButton(
        child: Text("Click me"),
        onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: const Text("Subscipt Channel"),
                  content: const Text("Are you wnat to subscipt this channel"),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(context, "Cancle"),
                        child:const Text("Cancel")),

                    TextButton(
                        onPressed: () => Navigator.pop(context, "Ok"),
                        child: const Text("Ok")),
                  ],
              backgroundColor: Colors.yellow,
                )),
      )),
    );
    // body: Container(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: const [
    //     Text(
    //       "Welcome to our Flutter First",
    //       style: TextStyle(
    //           color: Colors.blue,
    //           fontSize: 16,
    //           fontWeight: FontWeight.bold,
    //           wordSpacing: 0),
    //     ),
    //     Text(
    //       "Welcome to our Flutter First",
    //       style: TextStyle(
    //           color: Colors.blue,
    //           fontSize: 16,
    //           fontWeight: FontWeight.bold,
    //           wordSpacing: 0),
    //     ),
    //   ],
    // )));
  }
}
