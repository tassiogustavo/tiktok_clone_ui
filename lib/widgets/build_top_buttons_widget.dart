import 'package:flutter/material.dart';

class BuildTopButtons extends StatelessWidget {
  const BuildTopButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Following',
                style: TextStyle(fontSize: 16, color: Colors.white38),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                width: 8,
                height: 8,
                decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              ),
            ],
          ),
          Text(
            '  |  ',
            style: TextStyle(fontSize: 15, color: Colors.white54),
          ),
          Text(
            'For You',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
