import 'package:flutter/material.dart';
import 'package:flutter_architecture_example/core/view_component/view_component.dart';
import 'package:flutter_architecture_example/features/counter/presentation/business_logic/counter_bloc.dart';
import 'package:flutter_architecture_example/features/counter/presentation/ui_logic/counter_component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends WidgetView<CounterComponent> {
  const CounterView(
    super.component, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: component.onIncrementPressed,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: component.onDecrementPressed,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
