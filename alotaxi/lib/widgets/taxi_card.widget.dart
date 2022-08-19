import 'package:alotaxi/models/driver.model.dart';
import 'package:alotaxi/styles/style.dart';
import 'package:alotaxi/widgets/custom_divider.widget.dart';
import 'package:flutter/material.dart';

class TaxiCard extends StatelessWidget {
  const TaxiCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 285,
      decoration: BoxDecoration(
        color: ColorStyles.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Driver Information",
              style: TextStyles.head1,
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(driver.image),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      driver.name,
                      style: TextStyles.head2,
                    ),
                    const SizedBox(height: 5),
                    Text("${driver.exp} Years experience",
                        style: TextStyles.body),
                    const SizedBox(height: 5),
                    Text(driver.number, style: TextStyles.body),
                  ],
                ),
                const Spacer(),
                ...List.generate(
                  4,
                  (index) => Icon(
                    Icons.star,
                    color: index == 3 ? ColorStyles.grey : ColorStyles.yellow,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Car Information",
              style: TextStyles.head1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 10,
                  child: Text(driver.car.model, style: TextStyles.body),
                ),
                const CustomDivider(),
                Flexible(
                  flex: 10,
                  child: Text(driver.car.color, style: TextStyles.body),
                ),
                const CustomDivider(),
                Flexible(
                  flex: 10,
                  child: Text(driver.car.carNum, style: TextStyles.body),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                color: ColorStyles.yellow,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: ColorStyles.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("100 \$", style: TextStyles.button2),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text("Pay Now", style: TextStyles.button1),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
