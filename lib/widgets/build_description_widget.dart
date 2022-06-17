import 'package:flutter/material.dart';

import '../models/user_model.dart';

class BuildDescription extends StatelessWidget {
  const BuildDescription({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userData[index].user,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                userData[index].description,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text(userData[index].songName,
                  style: TextStyle(color: Colors.white70, fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
