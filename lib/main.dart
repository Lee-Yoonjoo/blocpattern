import 'package:blockpattern/stateful.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_library/bloclibrarywidget.dart';
import 'bloc_library/counter_observer.dart';
import 'bloc_pattern/blocwidget.dart';

void main() {

/*  BlocOverrides.runZoned(
        () => runApp(const MyApp()),
    blocObserver: CounterObserver(),
  );*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return BlocLibraryWidget();
                }));
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
