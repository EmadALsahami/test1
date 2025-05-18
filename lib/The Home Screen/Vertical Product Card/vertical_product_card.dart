import 'package:flutter/material.dart';

class HomeVerticalProductsCard extends StatelessWidget {
  const HomeVerticalProductsCard({
    super.key,
    required this.items,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
  });

  final List<Map<String, String>> items;
  final Color textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((item) {
          return GestureDetector(
            onTap: () {
              // Handle tap action here
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.orange),
                ),
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Stack(
                    children: [
                      // Background image
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        child: Image.asset(
                          item['image']!,
                          fit: BoxFit.fill,
                          width: 300,
                          height: 200,
                        ),
                      ),

                      // Logo image
                      Positioned(
                        top: 130,
                        left: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(color: Colors.deepOrange),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              "Assets/logo/logo.jpg",
                              fit: BoxFit.fill,
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),

                      // Discount tag
                      if (item['discount'] != null && item['discount']!.isNotEmpty)
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '${item['discount']}%',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                      // Wishlist button
                      Positioned(
                        top: 250,
                        right: 8,
                        child: IconButton(
                          onPressed: () {
                            // Handle wishlist action
                          },
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),

                      // Title
                      Positioned(
                        top: 210,
                        left: 110,
                        child: SizedBox(
                          width: 180,
                          child: Text(
                            item['title'] ?? 'No Title',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(color: Colors.grey.shade700),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),

                      // Description
                      Positioned(
                        top: 235,
                        left: 10,
                        child: SizedBox(
                          width: 180,
                          child: Text(
                            item['description'] ?? 'No Description',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .apply(color: textColor),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),

                      // Price section
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Row(
                          children: [
                            if (item['price'] != null && item['price']!.isNotEmpty)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '\$${item['price']}',
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            const SizedBox(width: 5),
                            if (item['oldPrice'] != null && item['oldPrice']!.isNotEmpty)
                              Text(
                                '\$${item['oldPrice']}',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}