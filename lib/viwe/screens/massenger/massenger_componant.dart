import 'package:flutter/material.dart';

class ActiveUser extends StatelessWidget {
  ActiveUser({Key? key, required this.name}) : super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          width: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black26,
                        radius: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 5,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                // name != null ? name : " ",
                "${name}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatUser extends StatelessWidget {
   ChatUser({Key? key,required this.name}) : super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  radius: 25,
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black26,
                      radius: 8,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "datadatadatadatatadataddatadatadatadatadatadataatadatadatadata",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      Text("9:00PM", style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// chatUser(String name) => Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             alignment: AlignmentDirectional.bottomEnd,
//             children: [
//               CircleAvatar(
//                 backgroundColor: Colors.lightBlueAccent,
//                 radius: 25,
//               ),
//               Stack(
//                 alignment: AlignmentDirectional.center,
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.black26,
//                     radius: 8,
//                   ),
//                   CircleAvatar(
//                     backgroundColor: Colors.green,
//                     radius: 5,
//                   )
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             width: 5,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.bold),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                         "datadatadatadatatadataddatadatadatadatadatadataatadatadatadata",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     Container(
//                       width: 4,
//                       height: 4,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle, color: Colors.white),
//                     ),
//                     Text("9:00PM", style: TextStyle(color: Colors.white))
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
