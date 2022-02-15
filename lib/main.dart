import 'package:blockpattern/stateful.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);



  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Flutter Bloc Pattern'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Center(
              child: FlatButton(
                color: Colors.grey,
                child: Text("Bloc Pattern"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return BlocWidget();
                  }));
                },
              ),
            ),
          Center(
            child: FlatButton(
              color: Colors.grey,
              child: Text("With Bloclibrary"),
              onPressed: (){
                /*Navigator.push(context, MaterialPageRoute(builder: (_){
                  return BlocLibrary();
                }));*/
              },
            ),
          ),
            Center(
              child: FlatButton(
                color: Colors.grey,
                child: Text("Normal Stateful"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return NormalStatefulWidget();
                  }));
                },
              ),
            ),
          ],

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
