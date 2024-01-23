import 'package:flutter/material.dart';
import 'package:huskies_app/logic/helper/app_theme.dart';

class HeadWidget extends StatelessWidget {
  final Widget? start;
  final Widget center;
  final Widget? end;

  const HeadWidget({
    super.key,
    this.start,
    this.end,
    required this.center,
  });
  @override
  Widget build(BuildContext context) => Padding(
        padding: AppTheme.mediumPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: start == null ? 40 : null, child: start),
            center,
            SizedBox(width: end == null ? 40 : null, child: end),
          ],
        ),
      );
}
