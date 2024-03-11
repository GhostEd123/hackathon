import 'package:flutter/material.dart';

//FELLOW DEVS, IN 45 MINUTES I HAVE TO PRESENT THIS CODE TO A POTENTIAL CLIENT, 
//I HAVE TRIED ALL METHODS YET TO NO AVAIL
// YOU ARE MY LAST HOPE !! DO NOT FAIL ME
//DEEBUG THE ERRORS SO I CAN PRESENT A SEAMLESS APPLICATION 
//I AM COUNTING ON YOU

//THIS APP SHOULD DISPLAY THE IMAGE SENT TO YOU 

void main() {
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key,  required title});

   String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title!),
      ),
      body: Column(
        children: <Widget>[
          Image.asset("./assets/", width: 0, height: 0),
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),

    
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          
        ],
      ),
    );
  }
}
