import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final String nom = "Hichri";
  final String prenom = "Amine";

  void clicked(){
    print("Clicked!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Welcome App"),
        backgroundColor: Colors.lightBlue,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello $nom $prenom", 
              style: const TextStyle(
                color: Colors.blue, 
                fontWeight: FontWeight.bold),
                ), 
                const Text("Other texts"),
                ElevatedButton(
                  onPressed: (){
                    print("clicked");
                  }, 
                  child: const Text("Click me here")),
                  FloatingActionButton(onPressed: (){
                    print("Floating");
                  },
                  child: const Icon(Icons.home)),
                  Image.asset('assets/images/aaa.png')
            ],
          )
        ),
      ),
    );
  }
}
