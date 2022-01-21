import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search your trip',
            hintStyle: Theme.of(context).textTheme.bodyText2,
            suffixIcon: Padding(
              padding: EdgeInsets.all(1.0.w),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: Icon(
                  Icons.search,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            )),
      ),
    );
  }
}
