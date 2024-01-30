Widgets in the form of light indicators of different shapes for your designs.

![Light Round](../../../Pictures/round.png)


```dart
import 'package:flutter/material.dart';
import '../flutter_light_indicators.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool state = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Led Indicators'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundLight(size: 80, state: state, color: Colors.red),
            RoundLight(size: 80, state: !state, color: Colors.green),
            SquareLight(size: 70, state: state, color: Colors.orange,stateText: true),
            SquareLight(size: 70, state: !state, color: Colors.orange,stateText: true,),
            TotalSquareLight(size: 60, state: state, color: Colors.blue),
            TotalSquareLight(size: 60, state: !state, color: Colors.blue,stateText: true,textColor: Colors.red),
          ],),
        floatingActionButton: FloatingActionButton(onPressed: ()=>setState(() {state = !state;}),
          child: const Icon(Icons.refresh),),
      ),
    );
  }
}


```
