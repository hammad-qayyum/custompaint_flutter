import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'CustomPiant flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class DemoPainter extends CustomPainter {
  @override
    void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 50,
        height: 50,
      ),
      0.4,
      2 * 3.14 - 0.8,
      true,
      paint,
    );
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
  
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomPaint(
    child: Container(child: Text('This is the child widget area'),),
    painter: DemoPainter(),
),
      ),
    );
  }
  
}
