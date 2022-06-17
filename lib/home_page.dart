import 'package:flutter/material.dart';
import 'package:tiktok_style_scrooling/models/user_model.dart';
import 'package:tiktok_style_scrooling/widgets/build%20_top_buttons_widget.dart';
import 'package:tiktok_style_scrooling/widgets/build_bottom_bar_widget.dart';
import 'package:tiktok_style_scrooling/widgets/build_description_widget.dart';
import 'package:tiktok_style_scrooling/widgets/build_floating_buttons_widget.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  VideoPlayerController? playerController;
  VoidCallback? listener;

  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    playerController = VideoPlayerController.asset(userData[0].videoBackground);
    playerController!.initialize();
    playerController!.setLooping(true);
    playerController!.play();
    listener = () {
      setState(() {});
    };

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller!);
    _controller!.forward();
    super.initState();
  }

  Future<void> _startPlay(String videoPath) async {
    Future.delayed(const Duration(milliseconds: 10), () {
      _clearPrevious().then((_) {
        _initializePlay(videoPath);
      });
    });
  }

  Future<bool> _clearPrevious() async {
    await playerController?.pause();
    await playerController?.dispose();
    return true;
  }

  Future<void> _initializePlay(String videoPath) async {
    setState(() {
      playerController = VideoPlayerController.asset(videoPath);
      playerController!.initialize();
      playerController!.setLooping(true);
      playerController!.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: PageView.custom(
          pageSnapping: true,
          onPageChanged: (int index) {
            _startPlay(userData[index].videoBackground);
          },
          scrollDirection: Axis.vertical,
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Stack(
                children: [
                  InkWell(
                    child: Container(
                      color: Colors.grey,
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                        child: (playerController != null
                            ? FadeTransition(
                                opacity: _animation!,
                                child: VideoPlayer(playerController!),
                              )
                            : Container()),
                      ),
                    ),
                  ),
                  BuildTopButtons(),
                  BuildDescription(index: index),
                  BuildFloatingButtons(index: index),
                ],
              );
            },
            childCount: userData.length,
          ),
        ),
        bottomNavigationBar: BuildBottomBar(),
      ),
    );
  }
}
