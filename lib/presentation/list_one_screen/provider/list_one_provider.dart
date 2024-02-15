import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/list_one_screen/models/list_one_model.dart';

/// A provider class for the ListOneScreen.
///
/// This provider manages the state of the ListOneScreen, including the
/// current listOneModelObj

// ignore_for_file: must_be_immutable
class ListOneProvider extends ChangeNotifier {
  ListOneModel listOneModelObj = ListOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
