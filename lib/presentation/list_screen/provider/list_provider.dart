import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/list_screen/models/list_model.dart';

/// A provider class for the ListScreen.
///
/// This provider manages the state of the ListScreen, including the
/// current listModelObj

// ignore_for_file: must_be_immutable
class ListProvider extends ChangeNotifier {
  ListModel listModelObj = ListModel();

  @override
  void dispose() {
    super.dispose();
  }
}
