import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
    this.text,
    required this.iconData,
  }) : super(key: key);
  final String? text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        text != null
            ? Text(
                text!,
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
