import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blockpattern/flutter_bloc_library/counter_bloc.dart';
import 'package:blockpattern/flutter_bloc_library/counter_event.dart';

class BlocFlutterLibraryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterFlutterBloc counterBloc =
        BlocProvider.of<CounterFlutterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Counter App'),
      ),
      body: Center(
        child: BlocBuilder<CounterFlutterBloc, int>(
          builder: (context, state) {
            return Text('$state', style: Theme.of(context).textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () => counterBloc.add(Increment()),
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () => counterBloc.add(Decrement()),
              icon: Icon(Icons.remove)),
        ],
      ),
    );
  }
}
