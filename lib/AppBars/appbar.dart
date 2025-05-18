import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(70.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0,),
      child: AppBar(
        centerTitle: false,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black, size: 16),
        actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
        titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
        title: widget.title,
        actions: widget.actions,
          automaticallyImplyLeading: false,
          leading: widget.showBackArrow ? IconButton(onPressed: () => Get.back(), icon: Icon(Icons.chevron_left))
              : widget.leadingIcon != null ? IconButton(onPressed: widget.leadingOnPressed, icon: Icon(widget.leadingIcon)) : null,

      ),
    );
  }

  // @override
  // Size get preferredSize => Size.fromHeight(200.0);
}
