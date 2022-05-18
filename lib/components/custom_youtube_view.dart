import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_parser/youtube_parser.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CustomYoutubeView extends StatefulWidget {
  final String url;
  const CustomYoutubeView({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  _CustomYoutubeViewState createState() => _CustomYoutubeViewState();
}

class _CustomYoutubeViewState extends State<CustomYoutubeView> {
  String? _youtubeId = "";
  bool kIsWeb = true;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    setState(() {
      _youtubeId = getIdFromUrl(widget.url);
    });

    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: _youtubeId.toString(),
      params: const YoutubePlayerParams(
        startAt: const Duration(minutes: 0, seconds: 0),
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );

    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      print('Entered Fullscreen');
    };

    _controller.onExitFullscreen = () {
      print('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      controller: _controller,
      child: const YoutubePlayerIFrame(
        aspectRatio: 16 / 9,
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
