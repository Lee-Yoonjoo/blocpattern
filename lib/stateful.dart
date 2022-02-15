import 'package:flutter/material.dart';


class NormalStatefulWidget extends StatefulWidget {
  const NormalStatefulWidget({Key? key}) : super(key: key);

  @override
  State<NormalStatefulWidget> createState() => _NormalStatefulWidgetState();
}

class _NormalStatefulWidgetState extends State<NormalStatefulWidget> {

  int count = 0;

  void _incrementCounter() {
    setState(() {
      count++;
    });
  }
  void _decrementCounter() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Normal Stateful Widget'),
      ),
      body: CountViewStateless(count: count),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: _incrementCounter,
              icon: Icon(Icons.add)),

          IconButton(
              onPressed: _decrementCounter,
              icon: Icon(Icons.remove)),

        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CountViewStateless extends StatelessWidget {
  int count;
  CountViewStateless({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Seperated Class only for Count Display");
    return Center(
      child:Text(
        count.toString(),
        style: TextStyle(fontSize: 80),
      ),
    );
  }
}