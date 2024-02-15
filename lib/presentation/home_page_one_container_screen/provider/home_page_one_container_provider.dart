import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/home_page_one_container_screen/models/home_page_one_container_model.dart';

/// A provider class for the HomePageOneContainerScreen.
///
/// This provider manages the state of the HomePageOneContainerScreen, including the
/// current homePageOneContainerModelObj

// ignore_for_file: must_be_immutable
class HomePageOneContainerProvider extends ChangeNotifier {
  HomePageOneContainerModel homePageOneContainerModelObj =
      HomePageOneContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
