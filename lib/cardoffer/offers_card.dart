import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OffersCard extends StatelessWidget {
  final String emad="السلام عليكم ورحمه الله وبركاته كيف حالكم يا رجال";
  final String ksm="بخصم 30%";
  const OffersCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
       minWidth: 250, maxWidth: 270, minHeight: 180, maxHeight: 190),


            child: Stack(

               alignment: Alignment.topRight,
              children: [


                ClipRRect(

                  borderRadius: BorderRadius.circular(10),
                  // تحديد قيمة الزوايا المدورة
                  child: Image.asset(
                    "Assets/image/العسل اليمني 2.jpg",
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(


                  child:  Column(

                      mainAxisAlignment:MainAxisAlignment.start,
                  children: [

                    Container(
                      // خلفية شبه شفافة خلف النص
                      padding: EdgeInsets.only(top: 10,right: 5),
                      child: Text(


                        style: TextStyle(

                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        emad.length > 10 ? '...${emad.substring(0, 10)}'  : emad,
                        maxLines: 1, // يسمح بسطرين فقط
                        overflow: TextOverflow.ellipsis,


                      ),
                    ),
                    SizedBox(height: 1,),
                    /////////
                    Container(
                      // خلفية شبه شفافة خلف النص

                      child: Text(
                        ksm,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),



                      ),
                    ),
                  ],
                ),
                ),
                Spacer(),
                Positioned(
                  top: 50,
                  right: 5,
                  child: Row(
                    children:[
                        Container(
                              alignment: Alignment.center,
                              child: Text(
                                "فندق رمادا-منويندم",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                      Container(
                      height: 50,
                      width: 50,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(width: 1, color: Colors.white)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(150),
                          // تحديد قيمة الزوايا المدورة
                          child: Image.asset("Assets/image/العسل اليمني 2.jpg",
                              height: 50,
                              width: double.infinity,
                              fit: BoxFit.cover),

                        ),
                      ),
                    ),

                  ],),
                ),
                Positioned(
                  top: 120,
                    right: 20,
                    child: Container(
                      height: 25,
                      width: 75,
                      alignment:Alignment.topRight ,
                      padding: EdgeInsets.only(top: 3,right: 4,left: 4,bottom: 3),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,

                      ),
                      child: Text("استمتع بالعرض",style: TextStyle(fontSize: 11,color: Colors.black),),


                ))

              ],
            ),
          );

  }}

//     return Container(
//       constraints: BoxConstraints(
//           minWidth: 250, maxWidth: 270, minHeight: 180, maxHeight: 190),
//       child: ListView(
//         children: [
//           Card(
//             child: Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   // تحديد قيمة الزوايا المدورة
//                   child: Image.asset(
//                     "Assets/image/العسل اليمني 2.jpg",
//                     height: 150,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//
//                 Positioned(
//                   //هذا حق النصوص والاعلان
//                   top: 65,
//                   right: -4,
//                   child: Container(
//                     height: 90,
//                     width: 270,
//                     child: Card(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         color: Colors.white,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Container(
//                               alignment: Alignment.center,
//                               child: Text(
//                                 "فندق رمادا-منويندم",
//                                 style: TextStyle(
//                                     fontSize: 14, color: Colors.grey),
//                               ),
//                             ),
//                             Row(children: [
//                               Spacer(),
//                               Text(
//                                 "وصف الاعلان",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               )
//                             ]),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Text(
//                                   "86878",
//                                   style: TextStyle(
//                                       fontSize: 14, color: Colors.grey),
//                                 ),
//                                 Card(
//                                   color: Colors.red,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   child: Text(
//                                     "2828 ريال ",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 10,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         )),
//                   ),
//                 ),
//                 Positioned(
//                   top: 100,
//                   right: 210,
//                   child: IconButton(
//                     onPressed: () {},
//                     // padding: EdgeInsets.all(5),
//                     icon: Icon(
//                       FontAwesomeIcons.heart,
//                       size: 20,
//                       color: Colors.red,
//                     ),
//
//                   ),
//                 ),
//                 Positioned(
//                   top: 45,
//                   right: 1,
//                   child: Container(
//                     height: 50,
//                     width: 50,
//                     child: Card(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5),
//                           side: BorderSide(width: 1, color: Colors.white)),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(150),
//                         // تحديد قيمة الزوايا المدورة
//                         child: Image.asset("Assets/image/العسل اليمني 2.jpg",
//                             height: 50,
//                             width: double.infinity,
//                             fit: BoxFit.cover),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Container(
//           //   constraints: BoxConstraints(
//           //     maxHeight: 50,
//           //     minHeight: 100,
//           //     maxWidth: 150,
//           //     minWidth: 150,
//           //   ),
//           //   child: Card(
//           //     child: ListTile(
//           //       title: Text("imageee"),
//           //       subtitle: Text("descradtion"),
//           //     ),
//           //
//           //   ),
//           //
//           //
//           //
//           // )
//         ],
//       ),
//     );
//   }
// }
