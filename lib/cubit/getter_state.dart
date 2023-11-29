// part of 'getter_bloc.dart';
//
// @immutable
// abstract class GetterState {}
// class GetterInitial extends GetterState {}

import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/cubit/getter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('My App')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Text('Counter: $state');
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => context.read<CounterCubit>().increment(),
                child: Text('+'),
              ),
              ElevatedButton(
                onPressed: () => context.read<CounterCubit>().decrement(),
                child: Text('-'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
}
