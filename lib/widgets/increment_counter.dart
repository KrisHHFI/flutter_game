import 'package:flutter/material.dart';

class IncrementCounter extends StatefulWidget {
  final int counter; // Accept counter value as a parameter

  const IncrementCounter({super.key, required this.counter});

  @override
  _IncrementCounterState createState() => _IncrementCounterState();
}

class _IncrementCounterState extends State<IncrementCounter> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.counter} kg', // Use the counter value from the parent
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
