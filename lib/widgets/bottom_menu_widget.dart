import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key, required this.isSelected, required this.icon}) : super(key: key);

  final bool isSelected;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: SizedBox(
        height: 40,
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(height: 5,),
            Container(
              width: 40,
              height: 2,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}