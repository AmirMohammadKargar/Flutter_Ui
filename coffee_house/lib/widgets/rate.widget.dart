import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  const Rate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_border_outlined,
        ),
        Text(
          "4.5",
          style: TextStyle(
            color: Theme.of(context).primaryColorDark,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Text("(1.580)")
      ],
    );
  }
}
