import 'package:coffee_house/widgets/rate.widget.dart';
import 'package:flutter/material.dart';

class PopularCoffeeCard extends StatelessWidget {
  const PopularCoffeeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).primaryColorDark.withOpacity(0.5),
              spreadRadius: -10,
              blurRadius: 20,
              blurStyle: BlurStyle.outer)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/mocha.jpeg',
                height: 100,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Frappuccino',
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'It\'s line of iced,blended coffee dark.',
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Rate()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
