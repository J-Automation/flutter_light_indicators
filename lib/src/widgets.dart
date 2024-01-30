import 'package:flutter/material.dart';

///draw a round light
class RoundLight extends StatelessWidget {
  const RoundLight(
      {Key? key, required this.size, this.stateText = false, required this.state, this.function, required this.color, this.textColor=Colors.black})
      : super(key: key);

  final double size;
  final bool state;
  final bool stateText;
  final Function? function;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (function != null) ? () => function!() : null,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(shape: BoxShape.circle,color: getLightColor(color)),
          child: Container(
            width: size,
            height: size,
            decoration:
            BoxDecoration(shape: BoxShape.circle, gradient:
            (state) ? RadialGradient(colors: [
              color.withOpacity(0.1),
              getNewColor(color, -80),
            ], stops: const [0.7,0.95])
                :
            RadialGradient(colors: [
              getNewColor(color, -60),
              getNewColor(color, -100),
            ], stops: const [ 0.8, 0.9])
            ),
            child: Center(
                child: (stateText) ? Text((state) ? 'ON' : 'OFF',
                  style: TextStyle(color: textColor,
                      fontSize: (size / 5),
                      fontWeight: FontWeight.bold),) : null
            ),
          ),
        ),
      ),
    );
  }
}

///draw a square light with round light
class SquareLight extends StatelessWidget {
  const SquareLight(
      {Key? key, required this.size, this.stateText = false, required this.state, this.function, required this.color, this.textColor=Colors.black})
      : super(key: key);

  final double size;
  final bool state;
  final bool stateText;
  final Function? function;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (function != null) ? () => function!() : null,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(shape: BoxShape.circle,color: getLightColor(color)),
          child: Container(
            width: size,
            height: size,
            decoration:
            BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(size/10), gradient:
            (state) ? RadialGradient(colors: [
              color.withOpacity(0.1),
              getNewColor(color, -80),
            ], stops: const [0.8, 0.9])
                :
            RadialGradient(colors: [
              getNewColor(color, -60),
              getNewColor(color, -100),
            ], stops: const [ 0.8, 0.9])
            ),
            child: Center(
                child: (stateText) ? Text((state) ? 'ON' : 'OFF',
                  style: TextStyle(color: textColor,
                      fontSize: (size / 5),
                      fontWeight: FontWeight.bold),) : null
            ),
          ),
        ),
      ),
    );
  }
}

///draw a square light
class TotalSquareLight extends StatelessWidget {
  const TotalSquareLight(
      {Key? key, required this.size, this.stateText = false, required this.state, this.function, required this.color, this.textColor=Colors.black})
      : super(key: key);

  final double size;
  final bool state;
  final bool stateText;
  final Function? function;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (function != null) ? () => function!() : null,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(size/10),color: getLightColor(color)),
          child: Container(
            width: size,
            height: size,
            decoration:
            BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(size/10), gradient:
            (state) ? RadialGradient(radius: 1.0,colors: [
              color.withOpacity(0.1),
              color.withOpacity(0.5),
            ], stops: const [0.3, 0.5])
                :
            RadialGradient(radius: 1.0,colors: [
              getNewColor(color, -70),
              getNewColor(color, -110),
            ], stops: const [0.3, 0.7])
            ),
            child: Center(
                child: (stateText) ? Text((state) ? 'ON' : 'OFF',
                  style: TextStyle(color: textColor,
                      fontSize: (size / 5),
                      fontWeight: FontWeight.bold),) : null
            ),
          ),
        ),
      ),
    );
  }
}


Color getLightColor(Color color) {
  return Color.fromARGB(
    color.alpha,
    (color.red + 100).clamp(0, 255),
    (color.green + 100).clamp(0, 255),
    (color.blue - 20).clamp(0, 255),
  );
}

Color getNewColor(Color color, int tone) {
  return Color.fromARGB(
    color.alpha,
    (color.red + tone).clamp(0, 255),
    (color.green + tone).clamp(0, 255),
    (color.blue + tone).clamp(0, 255),
  );
}
