import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.dart';

part 'counter_state.dart';

part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<_Increment>(_onIncrement);
    on<_Decrement>(_onDecrement);
  }

  Future<void> _onIncrement(
    _Increment event,
    Emitter<CounterState> emit,
  ) async {
    emit(state.copyWith(counter: state.counter + 1));
  }

  Future<void> _onDecrement(
    _Decrement event,
    Emitter<CounterState> emit,
  ) async {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
