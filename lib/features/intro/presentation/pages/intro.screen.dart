import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/core/constant/assets.dart';
import 'package:sizer/sizer.dart';
import 'package:travel/core/widget/small_primary_button.dart';
import 'package:go_router/go_router.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(Assets.travelExploer),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.0.w,
                vertical: 5.0.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildAppTitle(context),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  _buildIntroDescription(context),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  SmallPrimaryButton(
                    title: 'Explore',
                    onTap: () {
                      context.go('/explore');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIntroDescription(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 70.0.w,
          child: RichText(
            text: TextSpan(
              text: "Enjoy your holiday with ",
              children: [
                TextSpan(
                  text: 'Travel',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                )
              ],
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
        SizedBox(
          height: 2.0.h,
        ),
        SizedBox(
          width: 70.0.w,
          child: Text(
            'Keep yout travel very comfortable,easy and explore the world with travel',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }

  Widget _buildAppTitle(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.logo,
          width: 8.0.w,
        ),
        SizedBox(
          width: 2.0.w,
        ),
        Text(
          'Travel',
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
