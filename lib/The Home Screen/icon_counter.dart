import 'package:flutter/material.dart';

class NotificationCounterIcon extends StatelessWidget {
  const NotificationCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.notifications_none_outlined),
          color: iconColor,
        ),
        Positioned(
          right: 8,
          top: 7,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(
                    color: Colors.white,
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
