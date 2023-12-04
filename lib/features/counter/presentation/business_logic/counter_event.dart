part of '../business_logic/counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment() = _Increment;

  const factory CounterEvent.decrement() = _Decrement;
}
