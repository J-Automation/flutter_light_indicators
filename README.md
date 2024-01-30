Widgets in the form of light indicators of different shapes for your designs.



Designs Available

-Round Light


-Square Light


-Total Square Light




Round

![Round Light](https://github.com/J-Automation/flutter_light_indicators/blob/main/round.png)




Square

![Square Light](https://github.com/J-Automation/flutter_light_indicators/blob/main/square.png)




Total Square

![Total Square Light](https://github.com/J-Automation/flutter_light_indicators/blob/main/t_square.png)







EXAMPLE


```dart
import 'package:flutter/material.dart';
import 'package:flutter_light_indicator/flutter_light_indicators.dart';

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
            SquareLight(size: 70, state: state, color: Colors.lightBlueAccent,stateText: true),
            SquareLight(size: 70, state: !state, color: Colors.lightBlueAccent,stateText: true,),
            TotalSquareLight(size: 60, state: state, color: Colors.purple),
            TotalSquareLight(size: 60, state: !state, color: Colors.purple,stateText: true,),
          ],),
        floatingActionButton: FloatingActionButton(onPressed: ()=>setState(() {state = !state;}),
          child: const Icon(Icons.refresh),),
      ),
    );
  }
}


```
