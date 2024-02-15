import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/favorites_one_page/models/favorites_one_model.dart';

/// A provider class for the FavoritesOnePage.
///
/// This provider manages the state of the FavoritesOnePage, including the
/// current favoritesOneModelObj

// ignore_for_file: must_be_immutable
class FavoritesOneProvider extends ChangeNotifier {
  FavoritesOneModel favoritesOneModelObj = FavoritesOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
