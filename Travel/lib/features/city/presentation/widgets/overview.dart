import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel/features/city/presentation/widgets/overview_item.dart';

class Overview extends StatelessWidget {
  const Overview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Paris possesses a rich and attractive cultural scene with shows, activities and festivals.',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: 14.0.sp),
        ),
        SizedBox(
          height: 3.0.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const OverviewItem(
              icon: Icon(
                Icons.access_time_filled,
                color: Colors.blue,
              ),
              content: "5 Days",
              title: "Duration",
            ),
            OverviewItem(
              icon: Icon(
                Icons.location_on,
                color: Theme.of(context).primaryColor,
              ),
              content: "625 KM",
              title: "Distance",
            ),
            const OverviewItem(
              icon: Icon(
                Icons.wb_sunny,
                color: Colors.amber,
              ),
              content: "21 C",
              title: "Sunny",
            ),
          ],
        ),
      ],
    );
  }
}
