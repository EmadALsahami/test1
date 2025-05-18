import 'package:flutter/material.dart';


class PromoRoundedImage extends StatelessWidget {
  const PromoRoundedImage({
    super.key,
    this.height = 200,
    required this.width,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = Colors.white,
    this.fit = BoxFit.cover,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = 0,
  });

  final double? height;
  final double width;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.all(Radius.circular(borderRadius)) : BorderRadius.zero,
          child: Image(
            image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider, fit: fit,
          ),
        ),
      ),
    );
  }
}
