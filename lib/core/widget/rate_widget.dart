import 'package:flutter/material.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Text(
              "4.9 (12)",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
        Text(
          "* Estimated Cost",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
