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
            const Spacer(),
            ElevatedButton(
              onPressed: selectedMood == null
                  ? null
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageTwo(mood: selectedMood!),
                        ),
                      );
                    },
              child: const Text("NEXT →"),
            ),
  Widget moodButton(String emoji) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedMood = emoji;
        });
      },
      child: Text(
        emoji,
        style: const TextStyle(fontSize: 45),
      ),
    );
  }
}
 class pageTwo extends StatelessWidget {
  final String mood ;
  const PageTwo ({super.key , required this.mood});
  @override 
  widget build(BuildContext){
    return Scaffold(
      appBar : AppBar(
        title: const Text("your Mood - Page 2"),
        centerTitle: true,
      ),
      body: Padding(padding: const EdgeInsets.all(20)),
      child : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Your selected Mood is :",
          style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(mood , style: const TextStyle(fontSize: 80),),
          const SizedBox(height: 40),
          ElevatedButton(onPressed: (){
            navigator.pop(context);

          }, child: const Text("Previous"),
          )
        ],
      ),
    ),
    );
  }
 }