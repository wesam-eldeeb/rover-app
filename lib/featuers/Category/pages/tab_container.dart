import 'package:flutter/material.dart';
import 'package:rover_app/featuers/Category/widgets/tab_item.dart';

class TabContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
                onTap: (index) {
                  //  to stateful
                },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: [
                  TabItem(isSelected: false, source: "All"),
                  TabItem(isSelected: true, source: "New"),
                ])
          ],
        ));
  }
}
