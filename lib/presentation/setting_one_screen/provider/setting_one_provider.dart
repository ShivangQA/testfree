import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/setting_one_screen/models/setting_one_model.dart';
import '../models/equalizers_item_model.dart';

/// A provider class for the SettingOneScreen.
///
/// This provider manages the state of the SettingOneScreen, including the
/// current settingOneModelObj

// ignore_for_file: must_be_immutable
class SettingOneProvider extends ChangeNotifier {
  SettingOneModel settingOneModelObj = SettingOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
