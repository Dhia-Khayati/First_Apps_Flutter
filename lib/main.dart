import 'package:flutter/material.dart';
//import 'dart:math'; Removed for securty !!

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 159, 35, 163),
            title: Text("Tachaboh Game", style: TextStyle(color: Colors.white)),
          ),
          body: Game(),
        ),
      ),
    ),
  );
}

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  int idImageLeft = 2;
  int idImageRight = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          idImageLeft == idImageRight ? "You Win" : "Try Again",
          style: TextStyle(fontSize: 41, color: Colors.red),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),

          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      //idImageRight = Random().nextInt(14) + 1; Removed for secruty Photos deleted
                      idImageRight = 2;
                    });
                    print("Clicked !");
                  },
                  child: Image.asset("images/Photo-$idImageLeft.jpg"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      //idImageRight = Random().nextInt(14) + 1; Removed for secruty Photos deleted
                      idImageRight = 2;
                    });
                  },
                  child: Image.asset("images/Photo-$idImageRight.jpg"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
