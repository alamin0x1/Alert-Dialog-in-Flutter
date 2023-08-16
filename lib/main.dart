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
      title: 'InputText',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enter your name."),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  }
                  return null;

                },
              ),


            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                    const SnackBar(content: Text("Submit Data"))
                  );
                }
              },
              child: Text("Submit"),
            )
          ],
        ),

        // child: Column(
        //   children: [
        //     TextField(
        //       decoration: InputDecoration(
        //           border: OutlineInputBorder(), hintText: "Enter your Name"),
        //       keyboardType: TextInputType.name,
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     TextFormField(
        //       decoration: InputDecoration(
        //           border: UnderlineInputBorder(), hintText: "Enter your Phone"),
        //       keyboardType: TextInputType.number,
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     TextFormField(
        //       decoration: InputDecoration(
        //           border: InputBorder.none, hintText: "Enter your Email"),
        //       keyboardType: TextInputType.emailAddress,
        //     ),
        //     TextField(
        //       decoration: InputDecoration(
        //           border: OutlineInputBorder(),
        //           hintText: "Enter your Passwprd"),
        //       keyboardType: TextInputType.text,
        //     ),
        //     TextField(
        //       decoration: InputDecoration(
        //           border: OutlineInputBorder(), hintText: "Enter your Email"),
        //       keyboardType: TextInputType.emailAddress,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

//     child: TextButton(
//   child: Text("Click me"),
//   onPressed: () => showDialog(
//       context: context,
//       builder: (BuildContext context) => AlertDialog(
//             title: const Text("Subscipt Channel"),
//             content: const Text("Are you wnat to subscipt this channel"),
//             actions: [
//               TextButton(
//                   onPressed: () => Navigator.pop(context, "Cancle"),
//                   child:const Text("Cancel")),
//
//               TextButton(
//                   onPressed: () => Navigator.pop(context, "Ok"),
//                   child: const Text("Ok")),
//             ],
//         backgroundColor: Colors.yellow,
//           )),
// )),
// );
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
//   }
// }
