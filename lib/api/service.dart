import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/utils/num_sounds.dart';
import 'package:media_kit/media_kit.dart';
import 'package:number2words/number2words.dart';

typedef MP3FilePath = String;

class SpeakService {
  SpeakService._() {
    hii();
  }

  static late AudioDevice _speaker;
  static late AudioDevice _headphone;

  static void hii() {
    _player.stream.audioDevices.listen((event) {
      List<AudioDevice> devices = event;
      for (var item in devices) {
        if (item.description == "Speaker (Realtek(R) Audio)") {
          _speaker = item;
        } else if (item.description.contains("Headphone")) {
          _headphone = item;
        }
      }
    });
  }

  static Future<void> setEnabled(bool isEnabled) async {
    enabled = isEnabled;
    if (isEnabled) {
      _player.setAudioDevice(_headphone);
    } else {
      _player.setAudioDevice(_speaker);
    }
  }

  static bool enabled = true;

  static final _player = Player(
    configuration: const PlayerConfiguration(pitch: true),
  );

  static bool get isPlaying => _player.state.playing;

  static Future<void> speakNumber(double text) async {
    try {
      final words = Number2Words.convert(
        text,
        language: Number2WordsLanguage.nepali,
        wordCase: WordCaseEnum.lowercase,
        languageNamingSystem: LanguageNamingSystem.semiNative,
      );
      final nums = words.split(" ");
      await _speakSequence(nums, CurrentLanguage.currentLang);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static Future<void> _speakSequence(List<String> ls, Lang lang) async {
    final medias = List<Media>.empty(growable: true);
    for (final item in ls) {
      try {
        switch (lang) {
          case Lang.EN:
            medias.add(Media(NumSounds.en[item] ?? ""));
            break;
          case Lang.HI:
            medias.add(Media(NumSounds.hi[item] ?? ""));
            break;
          case Lang.TE:
            medias.add(Media(NumSounds.te[item] ?? ""));
            break;
          case Lang.BN:
            medias.add(Media(NumSounds.bn[item] ?? ""));
            break;
        }
      } catch (e) {
        debugPrint(e.toString());
      }
    }
    final pl = Playlist(medias);
    await _player.setRate(1.3);
    await _player.open(pl);
    int i = 0;
    await for (final item in _player.stream.duration) {
      i++;
      if (i >= pl.medias.length) {
        return;
      }
      await Future.delayed(item);
    }
  }

  static Future<void> reset() async {
    try {
      await _player.setAudioDevice(AudioDevice.auto());
      await _player.stop();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static Future<void> speak(String text, {bool isNumber = false}) async {
    try {
      if (isNumber) {
        _player.setRate(1.5);
      } else {
        _player.setRate(1);
      }
      await _player.open(Media(text));
      await Future.delayed(await _player.stream.duration.first);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
