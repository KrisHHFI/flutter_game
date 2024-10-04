import 'package:flutter/material.dart';

class IncrementCounter extends StatefulWidget {
  final int counter;

  const IncrementCounter({super.key, required this.counter});

  @override
  IncrementCounterState createState() => IncrementCounterState();
}

class IncrementCounterState extends State<IncrementCounter> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.counter} kg',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
