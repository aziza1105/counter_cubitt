// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
//
// part 'getter_event.dart';
// part 'getter_state.dart';
//
// class GetterBloc extends Bloc<GetterEvent, GetterState> {
//   GetterBloc() : super(GetterInitial()) {
//     on<GetterEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }


import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

