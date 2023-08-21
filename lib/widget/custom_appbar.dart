import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({
    super.key,
    this.title,
    this.leadingWidth,
    this.centerTitle,
    this.elevation,
    this.actions,
    this.leading,
    this.barHeigth,
    this.color,
    this.bottom,
  });

  final Widget? title;
  final Widget? leading;
  final double? leadingWidth;
  final double? barHeigth;
  final bool? centerTitle;
  final double? elevation;
  final Color? color;
  final PreferredSizeWidget? bottom;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      title: title,
      leading: leading ??
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            tooltip: 'Back',
          ),
      centerTitle: centerTitle ?? false,
      elevation: elevation,
      leadingWidth: leadingWidth,
      actions: actions,
      toolbarHeight: barHeigth,
      bottom: bottom,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(barHeigth ?? 56.0);
}
