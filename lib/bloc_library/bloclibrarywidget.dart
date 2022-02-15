import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';
class BlocLibraryWidget extends StatelessWidget {
  /// {@macro counter_page}
  const BlocLibraryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}
class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed:()=>context.read<CounterCubit>().increment(),
              icon: Icon(Icons.add)),

          IconButton(
              onPressed:() => context.read<CounterCubit>().decrement(),
              icon: Icon(Icons.remove)),

        ],
      ),
    );
  }
}
