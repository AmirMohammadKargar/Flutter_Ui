import 'package:coffee_house/pages/coffee.screen.dart';
import 'package:coffee_house/widgets/custom_circle_button.widget.dart';
import 'package:flutter/material.dart';

class CoffeeImage extends StatelessWidget {
  const CoffeeImage({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final CoffeeScreen widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Hero(
          tag: widget.index.toString(),
          child: Image.asset(
            'assets/images/coffee.png',
            width: 250,
            height: 250,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 350,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Theme.of(context).primaryColorLight),
          ),
        ),
        const Positioned(
          top: 250,
          left: 20,
          child: CustomCircleButton(
            text: 'Milk',
            iconData: Icons.water_drop,
          ),
        ),
        Positioned(
          bottom: -40,
          right: (MediaQuery.of(context).size.width - 90) / 2,
          child: const CustomCircleButton(
            text: 'Coffee',
            iconData: Icons.coffee_maker,
          ),
        ),
        const Positioned(
          top: 250,
          right: 20,
          child: CustomCircleButton(
            text: 'Espreso',
            iconData: Icons.coffee,
          ),
        ),
      ],
    );
  }
}
