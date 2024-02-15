import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/favorites_screen/models/favorites_model.dart';

/// A provider class for the FavoritesScreen.
///
/// This provider manages the state of the FavoritesScreen, including the
/// current favoritesModelObj

// ignore_for_file: must_be_immutable
class FavoritesProvider extends ChangeNotifier {
  FavoritesModel favoritesModelObj = FavoritesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
