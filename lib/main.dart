import 'package:flutter/material.dart';
import 'package:law_app/home.dart';

void main() {
  runApp(const MyApp());
}

Map<int, Color> color = {
  50: Color.fromARGB(255, 192, 128, 0),
  100: Color.fromARGB(255, 192, 128, 0),
  200: Color.fromARGB(255, 192, 128, 0),
  300: Color.fromARGB(255, 192, 128, 0),
  400: Color.fromARGB(255, 192, 128, 0),
  500: Color.fromARGB(255, 192, 128, 0),
  600: Color.fromARGB(255, 192, 128, 0),
  700: Color.fromARGB(255, 192, 128, 0),
  800: Color.fromARGB(255, 192, 128, 0),
  900: Color.fromARGB(255, 192, 128, 0),
};

MaterialColor colorCustom = MaterialColor(0xff4c4c4c, color);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: colorCustom,
          scaffoldBackgroundColor: const Color(0xFFc07f00)),
      home: const Home(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
