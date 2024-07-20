
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  bool _isControllerInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  Future<void> _initializeVideoPlayer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? savedPosition = prefs.getInt('video_position');

    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );

    await _controller.initialize();

    if (savedPosition != null) {
      _controller.seekTo(Duration(seconds: savedPosition));
    }

    setState(() {
      _isControllerInitialized = true;
    });

    _controller.addListener(() {
      if (_controller.value.isInitialized) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _saveVideoPosition();
    _controller.dispose();
    super.dispose();
  }

  Future<void> _saveVideoPosition() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int currentPosition = _controller.value.position.inSeconds;
    await prefs.setInt('video_position', currentPosition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player Example'),
      ),
      body: Center(
        child: _isControllerInitialized
            ? Stack(
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                  _controller.value.isPlaying
                      ? Container()
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              _controller.play();
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.blue,
                              size: 50.0,
                            ),
                          ),
                        ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: LinearProgressIndicator(
                        value: _controller.value.isInitialized
                            ? _controller.value.position.inSeconds /
                                _controller.value.duration.inSeconds
                            : 0.0,
                        backgroundColor: Colors.grey,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}