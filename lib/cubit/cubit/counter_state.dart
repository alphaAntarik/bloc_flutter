part of 'counter_cubit.dart';

class CounterState extends Equatable {
  int counter;
  bool isIncremenmted;
  CounterState({required this.counter, required this.isIncremenmted});

  @override
  List<Object> get props => [this.counter, this.isIncremenmted];
}
