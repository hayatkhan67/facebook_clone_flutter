import 'package:flutter/material.dart';


class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, this.image, this.radius, this.title, this.subtitle, this.onTap, this.leadingWidth, this.tileGap, this.trailing, this.splashColor, this.tileColor, this.padding});
final String? image;
final double? radius;
final Widget? title;
final Widget? subtitle;
final Function()? onTap;
final double? leadingWidth;
final double? tileGap;
final Widget? trailing;
final Color? splashColor;
final Color? tileColor;
final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: leadingWidth,
      horizontalTitleGap: tileGap,
      splashColor: splashColor,
      tileColor: tileColor,
      trailing: trailing,
      contentPadding: padding,
      onTap: onTap,
          leading:CircleAvatar(
          backgroundImage: AssetImage(image.toString()),
          onBackgroundImageError: (exception, stackTrace) => const Icon(Icons.error),
          radius: radius ?? 25,
          ),
          title: title,
          subtitle:subtitle,
        );
  }
}