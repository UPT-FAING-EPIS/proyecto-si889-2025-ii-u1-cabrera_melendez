import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

String formatDuration(Duration d) {
  final minutes = d.inMinutes.remainder(60);
  final seconds = d.inSeconds.remainder(60);
  return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
}

void handlePlayPause(AudioPlayer player) {
  if (player.playing) {
    player.pause();
  } else {
    player.play();
  }
}

class AudioHelper extends StatefulWidget {
  final String audioUrl;
  final Function()? onAudioComplete;

  const AudioHelper({
    super.key,
    required this.audioUrl,
    this.onAudioComplete,
  });

  @override
  State<AudioHelper> createState() => _AudioHelperState();
}

class _AudioHelperState extends State<AudioHelper> {
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    player.setUrl(widget.audioUrl);
    
    // Listen for audio completion
    player.positionStream.listen((position) {
      final duration = player.duration;
      if (duration != null && position >= duration) {
        widget.onAudioComplete?.call();
      }
    });
  }

  void handleSeek(double value) {
    final duration = player.duration;
    if (duration != null) {
      player.seek(Duration(seconds: value.toInt()));
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder<Duration>(
          stream: player.positionStream,
          builder: (context, snapshot) {
            final position = snapshot.data ?? Duration.zero;
            return Text(formatDuration(position));
          },
        ),
        StreamBuilder<Duration?>(
          stream: player.durationStream,
          builder: (context, snapshot) {
            final duration = snapshot.data ?? Duration.zero;
            return StreamBuilder<Duration>(
              stream: player.positionStream,
              builder: (context, positionSnapshot) {
                final position = positionSnapshot.data ?? Duration.zero;
                return Slider(
                  min: 0.0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: handleSeek,
                );
              },
            );
          },
        ),
        StreamBuilder<Duration?>(
          stream: player.durationStream,
          builder: (context, snapshot) {
            final duration = snapshot.data ?? Duration.zero;
            return Text(formatDuration(duration));
          },
        ),
        StreamBuilder<PlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) {
            final isPlaying = snapshot.data?.playing ?? false;
            return IconButton(
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
              ),
              onPressed: () => handlePlayPause(player),
            );
          },
        ),
      ],
    );
  }
}
