import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter(
      {Key? key,
      required this.horizontalPadding,
      required this.verticalPadding})
      : super(key: key);
  final double horizontalPadding;
  final double verticalPadding;
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int qty = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widget.horizontalPadding,
            vertical: widget.verticalPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  qty--;
                });
              },
              child: const Icon(Icons.remove),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(qty.toString()),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  qty++;
                });
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
