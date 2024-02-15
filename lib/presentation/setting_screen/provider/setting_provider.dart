import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/setting_screen/models/setting_model.dart';
import '../models/equalizers1_item_model.dart';

/// A provider class for the SettingScreen.
///
/// This provider manages the state of the SettingScreen, including the
/// current settingModelObj

// ignore_for_file: must_be_immutable
class SettingProvider extends ChangeNotifier {
  SettingModel settingModelObj = SettingModel();

  @override
  void dispose() {
    super.dispose();
  }
}
