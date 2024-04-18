import 'package:flutter/material.dart';

class ListTileSaftty extends StatelessWidget {
  Icon leading;
  String title;
  
  //var onTop;
  ListTileSaftty({
    required this.leading,
    required this.title,
    //required this.onTop
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: leading, 
         title: Text (title), 
         trailing:const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
        // onTap: () {
        //   print(onTop);
        // },
        );
  }
}
