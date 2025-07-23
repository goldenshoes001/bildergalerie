import 'package:bildergaliere/class/appdata.dart';
import 'package:flutter/material.dart';

class Barwidget extends StatelessWidget implements PreferredSizeWidget {
  final Color barColor;
  final String title;
  final int elevation;
  final Color shadow;
  final Color surfaceTintColor;
  final Color textColor;
  final double textSize;
  const Barwidget({
    super.key,
    this.barColor = Colors.black,
    this.title = "",
    this.elevation = 0,
    this.shadow = Colors.transparent,
    this.surfaceTintColor = Colors.transparent,
    this.textColor = Colors.white,
    this.textSize = 14,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: barColor,
      title: Text(
        title,
        style: TextStyle(color: textColor, fontSize: textSize),
      ),
      elevation: 4,
      shadowColor: shadow,
      surfaceTintColor: surfaceTintColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Appdata.appbarSize);
}
