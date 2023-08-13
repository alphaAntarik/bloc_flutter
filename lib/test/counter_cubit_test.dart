// import 'package:bloc_flutter/cubit/cubit/counter_cubit.dart';
// import 'package:test/test.dart';
// import 'package:bloc_test/bloc_test.dart';

// void main() {
// group('CounterCubit', () {
//     CounterCubit? counterCubit;

//     setUp(() {
//       counterCubit = CounterCubit();
//     });

//     tearDown(() {
//       counterCubit!.close();
//     });

//     test('initial state of CounterCubit is CounterState(counterValue:0)', () {
//       expect(counterCubit!.state, CounterState(counter: 0, isIncremenmted: false));
//     });

//     blocTest(
//         'the CounterCubit should emit a CounterState(counterValue:1, wasIncremented:true) when the increment function is called',
//         build: () => counterCubit,
//         act: (cubit) => cubit!.increment(),
//         expect: [CounterState(counter: 1, isIncremenmted: true)]);

//     blocTest(
//         'the CounterCubit should emit a CounterState(counterValue:-1, wasIncremented:false) when the decrement function is called',
//         build: () => counterCubit,
//         act: (cubit) => cubit!.decrement(),
//         expect: [CounterState(counter: -1, isIncremenmted: false)]);
//   });
// }
