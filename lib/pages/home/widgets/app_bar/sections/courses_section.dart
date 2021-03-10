import 'package:flutter/material.dart';
import 'package:interface_udemy/breakpoints.dart';
import 'package:interface_udemy/pages/home/widgets/app_bar/course_item.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 16),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return CourseItem();
        },
      );
    });
  }
}
