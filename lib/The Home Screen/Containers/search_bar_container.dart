import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../device_utilities.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          width: DeviceUtilities.getScreenWidth(context),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey)
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.grey.shade900,),
              SizedBox(width: 16,),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}

