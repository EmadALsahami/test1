import 'package:flutter/material.dart';

import '../The Home Screen/icon_counter.dart';
import 'appbar.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        children: [
          Text(
            'Yemen Offers :)',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
          Text(
            "It's Good Day to Shop Today!!",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: Colors.white),
          ),
        ],
      ),
      actions: [
        NotificationCounterIcon(
          iconColor: Colors.white,
          onPressed: () {  },
        ),
      ],
    );
  }
}