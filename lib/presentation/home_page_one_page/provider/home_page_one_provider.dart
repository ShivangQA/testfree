import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/home_page_one_page/models/home_page_one_model.dart';
import '../models/songs_item_model.dart';

/// A provider class for the HomePageOnePage.
///
/// This provider manages the state of the HomePageOnePage, including the
/// current homePageOneModelObj

// ignore_for_file: must_be_immutable
class HomePageOneProvider extends ChangeNotifier {
  HomePageOneModel homePageOneModelObj = HomePageOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
