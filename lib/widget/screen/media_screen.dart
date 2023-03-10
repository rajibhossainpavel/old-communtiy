import 'dart:io';

import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/enum/diary_type.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen(
      {required this.type, required this.filePath, required this.url, Key? key})
      : super(key: key);
  static const paramMediaType = 'media-type';
  static const paramFilePath = 'file-path';
  static const paramUrl = 'url';

  final String type;
  final String filePath;
  final String url;

  @override
  _MediaScreenState createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  late VideoPlayerController _controller;
  bool _isMovie = false;

  @override
  void initState() {
    super.initState();
    if (widget.type == enumToString(MediaScreenType.movie)) {
      _isMovie = true;

      if (widget.filePath.isNotEmpty) {
        _controller = VideoPlayerController.file(File(widget.filePath));
      } else {
        _controller = VideoPlayerController.network(widget.url);
      }

      _controller
        ..setLooping(true)
        ..initialize().then(
          (_) {
            setState(() {});
          },
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.8),
      child: Column(
        children: [
          _closeButton(context),
          Expanded(
            child: Center(
              child: _mediaView(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mediaView() {
    if (widget.type == enumToString(MediaScreenType.photo)) {
      return _photoViewer();
    }
    return _videoPlayer();
  }

  Widget _photoViewer() {
    if (widget.filePath.isNotEmpty) {
      return Image.file(File(widget.filePath));
    } else {
      return Image.network(widget.url);
    }
  }

  Widget _videoPlayer() {
    return Stack(
      children: [
        if (_controller.value.isInitialized)
          GestureDetector(
            onTap: () {
              setState(
                () {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                },
              );
            },
            child: Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            ),
          )
        else
          Container(),
        _playButton(_controller.value.isPlaying),
      ],
    );
  }

  Align _closeButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
        child: TextButton(
          onPressed: () async {
            if (_isMovie) {
              await _controller.pause();
            }
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '閉じる',
              style: OshirucoTextStyles.mediumWhiteBold,
            ),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (widget.type == enumToString(MediaScreenType.movie)) {
      _controller.dispose();
    }
    super.dispose();
  }

  Widget _playButton(bool isPlaying) {
    if (isPlaying) {
      return const SizedBox();
    }
    return const IgnorePointer(
      child: Center(
        child: Icon(
          Icons.play_arrow,
          size: 100,
          color: Colors.white,
        ),
      ),
    );
  }
}

enum MediaScreenType {
  photo,
  movie,
}
