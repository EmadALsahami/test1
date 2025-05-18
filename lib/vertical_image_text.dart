import 'package:flutter/material.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
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
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.orange),
                ),
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
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // Product title
                    Positioned(
                      top: 160,
                      left: 30,
                      child: SizedBox(
                        width: 180,
                        child: Text(
                          item['title']!,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,

                            fontStyle: FontStyle.italic,
                          ),

                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    // Positioned(
                    //   top: 10,
                    //   right: 80,
                    //   child: SizedBox(
                    //     width: 180,
                    //     child: Icon(
                    //       item['icon']! as IconData?,
                    //       size: 30,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class VerticalImageText extends StatelessWidget {
//   const VerticalImageText({
//     super.key,
//     required this.items,
//     this.textColor = Colors.black,
//     this.backgroundColor = Colors.white,
//   });
//
//   final List<Map<String, String>> items;
//   final Color textColor;
//   final Color? backgroundColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: items.map((item) {
//           return GestureDetector(
//             onTap: () {},
//             child: Padding(
//               padding: const EdgeInsets.only(right: 16),
//               child: Column(
//                 children: [
//                   Container(
//                     width: 249,
//                     height: 200,
//                     decoration: BoxDecoration(
//                       color: backgroundColor,
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                     ),
//                     child: Center(
//                       child: ClipRRect(
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                           child: Image(image: AssetImage(item['image']!), fit: BoxFit.fill)),
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   SizedBox(
//                     width: 100,
//                     child: Text(
//                       item['title']!,
//                       style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
//
//
// class VerticalImageText extends StatelessWidget {
//   const VerticalImageText({
//     super.key,
//     required this.image,
//     required this.title,
//     this.textColor = Colors.black,
//     this.backgroundColor = Colors.white,
//     this.onTap,
//   });
//
//   final String image, title;
//   final Color textColor;
//   final Color? backgroundColor;
//   final void Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.only(right: 16,),
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 width: 200,
//                 height: 200,
//                 // padding: EdgeInsets.all(8.0),
//                 decoration: BoxDecoration(
//                     color: backgroundColor,
//                     borderRadius: BorderRadius.all(Radius.circular(10),),
//                 ),
//                 child: Center(
//                   child: Image(image: AssetImage(image), fit: BoxFit.fill),
//                 ),
//               ),
//             ),
//             SizedBox(height:  16/2,),
//             SizedBox(
//               width: 100,
//               child: Text(
//                 title,
//                 style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
