

import 'package:bloc/bloc.dart';
import 'package:blockpattern/flutter_bloc_library/counter_event.dart';

class CounterFlutterBloc extends Bloc<CounterEvent, int> {
  CounterFlutterBloc() : super(0){
    on<Increment>(_onIncrement);
    on<Decrement>(_onDecrement);
  }

  void _onIncrement(Increment event, Emitter<int> emit) {
    emit(state + 1);
  }

  void _onDecrement(Decrement event, Emitter<int> emit) {
    emit(state - 1);
  }
}