import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../models/user_model.dart';

class BuildFloatingButtons extends StatelessWidget {
  const BuildFloatingButtons({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 7),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 0.7,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                          NetworkImage(userData[index].avatarUrl),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 0.7,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              children: [
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    /*print("Open Chats")*/
                  },
                ),
                Text(userData[index].likesNumber,
                    style: TextStyle(color: Colors.white))
              ],
            ),
            Column(
              children: [
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.comment_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    /*print("Open Chats")*/
                  },
                ),
                Text(userData[index].commentsNumber,
                    style: TextStyle(color: Colors.white))
              ],
            ),
            Column(
              children: [
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(
                      Icons.reply,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  onPressed: () {
                    /*print("Open Chats")*/
                  },
                ),
                Text(userData[index].forwardNumber,
                    style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 5,
                )
              ],
            ),
            FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.transparent,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: const [Colors.black, Colors.black45],
                  ),
                ),
                child: Icon(
                  Icons.music_note_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              onPressed: () {
                /*print("Open Chats")*/
              },
            ),
          ],
        ),
      ),
    );
  }
}
