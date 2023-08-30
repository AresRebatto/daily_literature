import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white10),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Daily Literature'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        centerTitle: true,
        title: Text(widget.title,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
        ),),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row
            (
              children:
              [
                Container
               (
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 5.0,left: 10.0),
                 child: SizedBox
                (
                  width: 300,
                  height: 50,
                  child:TextField
                  (
                    decoration: InputDecoration
                    (
                      border: OutlineInputBorder
                      (
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Cerca un poeta o una poesia",
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                 ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0, left: 5.0),
                    child: TextButton
                    (
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      child: const Text(
                        "Cerca",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    )
                ),

              ]
            ),

            Row(
              children: <Widget>[
                TextButton(
                    onPressed: (){},
                    child: const Text(
                        "Nuove aggiunte",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )
                    )
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text(
                      "Di tendenza",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text(
                      "I tuoi preferiti",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )
                  ),
                )

              ],
            )


          ],
        ),
      ),
    );
  }
}
