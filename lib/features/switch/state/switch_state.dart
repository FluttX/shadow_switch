import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';

ValueNotifier<bool> isLightOn = ValueNotifier(false);

class SwitchState {
  static Future<void> onTapSwitch() async {
    isLightOn.value = !isLightOn.value;

    /// PLAY CLICK SOUND
    final player = AudioPlayer();
    await player.play(AssetSource('/audio/button_click.mp3'));
  }
}
