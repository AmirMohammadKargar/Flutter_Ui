import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel/core/widget/like_button.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({
    Key? key,
    this.onTap,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);
  final Function? onTap;
  final String image, name, price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: 45.0.w,
        height: 30.0.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 7.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                right: 2.0.w,
                left: 2.0.w,
                bottom: 0.5.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.button,
                      ),
                      Text(
                        "Starting at \$$price",
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(fontSize: 10.0.sp),
                      ),
                    ],
                  ),
                  const LikeButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
