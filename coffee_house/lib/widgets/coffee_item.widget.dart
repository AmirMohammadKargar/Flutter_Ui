import 'package:coffee_house/pages/coffee.screen.dart';
import 'package:flutter/material.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CoffeeScreen(
              index: index,
            ),
          ),
        );
      },
      child: SizedBox(
        width: 190,
        child: Stack(children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color:
                            Theme.of(context).primaryColorDark.withOpacity(0.5),
                        spreadRadius: -10,
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer)
                  ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cappuccino',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[700],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'A cuppuccino is a prepared with equal parts double espresso ...',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$3.45',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorDark,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: index.toString(),
              child: Image.asset(
                'assets/images/coffee.png',
                width: 150,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
