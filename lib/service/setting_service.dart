import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const String emsKey = 'ems_setting';
const String showBabyAlwaysKey = 'always_babystepping_setting';
const String useTextInputForNumKey = 'text_inpt_for_num_fields';
const String startWithOverviewKey = 'start_with_overview';
const String useOffsetPosKey = 'use_offset_pos';
const String selectedThemeModeKey = 'selectedThemeMode';
const String selectedThemePackKey = 'selectedThemePack';
const String selectedGCodeGrpIndex = 'selGCodeGrp';
const String selectedWebcamGrpIndex = 'selWebcamGrp';
const String selectedProgressNotifyMode = 'selProgNotMode';
const String activeStateNotifyMode = 'activeStateNotMode';
const String requestedNotifyPermission = 'reqNotifyPerm';

final settingServiceProvider = Provider((ref) => SettingService());

/// Settings related to the App!
class SettingService {
  late final _boxSettings = Hive.box('settingsbox');

  Future<void> writeBool(String key, bool val) {
    return _boxSettings.put(key, val);
  }

  bool readBool(String key, [bool fallback = false]) {
    return _boxSettings.get(key) ?? fallback;
  }

  Future<void> writeInt(String key, int val) {
    return _boxSettings.put(key, val);
  }

  int readInt(String key, [int fallback = 0]) {
    return _boxSettings.get(key) ?? fallback;
  }

  Future<void> write<T>(String key, T val) {
    return _boxSettings.put(key, val);
  }

  T read<T>(String key, T fallback) {
    return _boxSettings.get(key) ?? fallback;
  }
}

