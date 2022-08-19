import 'package:alotaxi/models/bottom_navigation_bar.model.dart';
import 'package:alotaxi/styles/style.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  const CustomBottomNavigator({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 60,
      decoration: BoxDecoration(
        color: ColorStyles.black,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Row(
        children: [
          ...List.generate(
            icons.length,
            (index) => Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Icon(
                    icons[index],
                    color: index == 0 ? ColorStyles.yellow : ColorStyles.grey,
                  ),
                  const Spacer(),
                  index == 0
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 6,
                            decoration: const BoxDecoration(
                              color: ColorStyles.yellow,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
