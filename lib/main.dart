import 'package:customwidgets/Widgets/Randombtn.dart';
import 'package:customwidgets/uihelper/util.dart';
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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              child: Random_btn(
                btnName: "Log in",
                icon: Icon(Icons.lock, color: Colors.brown,),
                callback: (){
                  print("Logged in");
                },
                //bgColor: Colors.red,

               textStyle: myTextStyle11(),
              ),
            ),
            SizedBox(height: 11,),

            Container(
              width: 150,
              height: 50,
              child: Random_btn(
                btnName: "play",
                icon: Icon(Icons.play_arrow),
                callback: (){
                  print("Play in");
                },
               // bgColor: Colors.lightGreenAccent,
                textStyle: myTextStyle11(),
              ),
            ),

          ],
        ),



      ),

    );
  }
}
