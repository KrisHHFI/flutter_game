import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class IncrementButton extends StatelessWidget {
  final VoidCallback onPressed;
  final AudioPlayer _audioPlayer = AudioPlayer();

  IncrementButton({super.key, required this.onPressed});

  void _playSound() async {
    await _audioPlayer.play(AssetSource(
        'Meow.wav')); // Sound credit: Ipa_MeowVoice_38_C#6.wav by ipaghost -- https://freesound.org/s/336084/ -- License: Attribution 3.0
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _playSound();
        onPressed();
      },
      tooltip: 'Increment',
      child: const Icon(Icons.waving_hand),
    );
  }
}
