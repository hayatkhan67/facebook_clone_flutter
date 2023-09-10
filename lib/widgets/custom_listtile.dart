import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      this.leading,
      this.title,
      this.subtitle,
      this.trailing,
      this.onTap,
      this.leadingWidth});

  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final Function()? onTap;
  final double? leadingWidth;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            leading!,
            SizedBox(
              width: leadingWidth ?? 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [title ?? const SizedBox()],
                ),
                Row(
                  children: [subtitle ?? const SizedBox()],
                )
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  trailing ?? const SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
