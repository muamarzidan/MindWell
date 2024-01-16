import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatelessWidget {
  final String youtubeVideoId;
  final String thumbnailUrl;

  VideoScreen({required this.youtubeVideoId, required this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    String videoUrl = "https://www.youtube.com/watch?v=$youtubeVideoId";
    Duration videoDuration = Duration(minutes: 4, seconds: 21);

    String formattedDuration =
        "${videoDuration.inMinutes}:${(videoDuration.inSeconds % 60).toString().padLeft(2, '0')}";

    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: youtubeVideoId,
                flags: YoutubePlayerFlags(
                  autoPlay: true,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,
            ),
            const SizedBox(height: 10),
            Text(
              formattedDuration,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
