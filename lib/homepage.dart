import 'package:bloc_flutter/cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              if (state.isIncremenmted == true) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Incremented!'),
                    duration: Duration(milliseconds: 300),
                  ),
                );
              } else if (state.isIncremenmted == false) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Decremented!'),
                    duration: Duration(milliseconds: 300),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Text("Counter value: ${state.counter}");
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  child: Text("Go previous")),
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  child: Text("Go ahead")),
            ],
          )
        ]),
      ),
    );
  }
}
