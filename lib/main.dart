import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PageOne(),
    );
  }
}

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}
class _PageOneState extends State<PageOne>{
  String? selectedMood ;
  @override Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mood Selector - page 1"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
      child: Column(
        children: [
const Text("Choose Your Mood:",
style : TextStyle(fontSize:22 , fontWeight: FontWeight.bold)),
const SizedBox(height :20),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    moodButton ("😊"),
    moodButton ("😢"),
    moodButton ("😡"),

  ],
),
const SizedBox(height:30),
if (selectedMood !=null)
Text("Slelected :$selectedMood",
style: const TextStyle(fontSize: 28),
),

        ],
      )
    )
  }
}
