// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'bloc/counter_bloc.dart';
//
// void main(List<String> args) {
//   runApp(const App());
// }
//
// class App extends StatelessWidget {
//   const App({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CounterPage(),
//     );
//   }
// }
//
// class CounterPage extends StatefulWidget {
//   const CounterPage({super.key});
//
//   @override
//   State<CounterPage> createState() => _CounterPageState();
// }
//
// class _CounterPageState extends State<CounterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CounterBloc(),
//       child: Builder(builder: (context) {
//         return Scaffold(
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   context.read<CounterBloc>().add(DecrementEvent());
//                 },
//                 child: const Icon(
//                   Icons.remove,
//                 ),
//               ),
//               Center(
//                 child: BlocBuilder<CounterBloc, CounterState>(
//                   builder: (context, state) {
//                     return Text(
//                       '${state.counter}',
//                       style: const TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               context.read<CounterBloc>().add(IncrementEvent());
//             },
//             child: const Icon(Icons.add),
//           ),
//         );
//       }),
//     );
//   }
// }
//
//

import 'package:counter_bloc/cubit/getter_bloc.dart';
import 'package:counter_bloc/cubit/getter_state.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: CounterScreen(),
      ),
    );
  }
}
