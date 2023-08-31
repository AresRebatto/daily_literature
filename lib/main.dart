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
            //Barra di ricerca e button cerca
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

            //Menu
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
            ),
            Align
            (
              alignment: Alignment.topLeft,
              child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text(
                "Poeti",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              )),
            ),
            //Sezione nuovi poeti aggiunti
            Container(
              height: 220,
              margin: const EdgeInsets.only(top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Ungaretti()),
                          );
                        },
                              child: Container(
                                margin:  const EdgeInsets.only(left: 10.0),
                                child: Image.asset("assets/Ungaretti.png"),
                              ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Leopardi()),
                          );
                        },
                        child: Container(
                          margin:  const EdgeInsets.only(left: 10.0),
                          child: Image.asset("assets/Leopardi.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Petrarca()),
                          );
                        },
                        child: Container(
                          margin:  const EdgeInsets.only(left: 10.0),
                          child: Image.asset("assets/Petrarca.png"),
                        ),
                      ),
                    ]
                  ),
            ),
            Align
              (
              alignment: Alignment.topLeft,
              child: Container(
                  margin: const EdgeInsets.only(left: 10, top: 30),
                  child: const Text(
                    "Poesie",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  )
              ),
            ),

            //Sezione nuove poesie aggiunte
            Container(
              margin: const EdgeInsets.only(top: 10.0, left: 10.0),
              height: 320,


              child: Row(
                children: <Widget> [
                   Column(
                    children: <Widget>[
                      //Porto sepolto Ungaretti
                      GestureDetector(
                        onTap: (){},
                        child:Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          height: 55,
                          child: Row(
                            children: [
                              Image.asset("assets/portoSepolto.jpg"),
                              const Text(
                                "   Porto sepolto \n   Giuseppe Ungaretti",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      //L'infinito Leopardi
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 55,
                          margin: const EdgeInsets.only(top: 25.0),
                          child: Row(
                            children: [
                              Image.asset("assets/Recanati.jpg"),
                              const Text(
                                "     L'infinito \n     Giacomo Leopardi",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      //A Silvia Leopardi
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 55,
                          margin: const EdgeInsets.only(top: 25.0),
                          child: Row(
                            children: [
                              Image.asset("assets/Silvia.jpg"),
                              const Text(
                                "     A silvia \n     Giacomo Leopardi",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      //Solo et pensoso Petrarca
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 55,
                          margin: const EdgeInsets.only(top: 25.0),
                          child: Row(
                            children: [
                              Image.asset("assets/SoloPensoso.jpg"),
                              const Text(
                                "   Solo et Pensoso \n   Francesco Petrarca",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class Ungaretti extends StatelessWidget {
  const Ungaretti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


class Leopardi extends StatelessWidget {
  const Leopardi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


class Petrarca extends StatelessWidget {
  const Petrarca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}