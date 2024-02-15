import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/profile_one_screen/models/profile_one_model.dart';

/// A provider class for the ProfileOneScreen.
///
/// This provider manages the state of the ProfileOneScreen, including the
/// current profileOneModelObj

// ignore_for_file: must_be_immutable
class ProfileOneProvider extends ChangeNotifier {
  ProfileOneModel profileOneModelObj = ProfileOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
