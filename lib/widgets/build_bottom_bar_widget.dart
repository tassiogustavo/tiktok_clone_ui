import 'package:flutter/material.dart';

import 'bottom_menu_widget.dart';

class BuildBottomBar extends StatelessWidget {
  const BuildBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: const [
                Expanded(
                  child: BottomMenu(
                    isSelected: true,
                    icon: Icons.home_filled,
                  ),
                ),
                Expanded(
                  child: BottomMenu(
                    isSelected: false,
                    icon: Icons.search,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Stack(
            children: [
              Align(
                child: Container(
                  width: 40,
                  height: 30,
                  margin: const EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              Align(
                child: Container(
                  width: 40,
                  height: 30,
                  margin: const EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              Align(
                child: Container(
                  width: 40,
                  height: 30,
                  margin: const EdgeInsets.only(left: 3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: const [
                Expanded(
                  child: BottomMenu(
                    isSelected: false,
                    icon: Icons.comment_outlined,
                  ),
                ),
                Expanded(
                  child: BottomMenu(
                    isSelected: false,
                    icon: Icons.person_outline,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
