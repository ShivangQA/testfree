import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/artists_one_screen/models/artists_one_model.dart';
import '../models/artistsone_item_model.dart';

/// A provider class for the ArtistsOneScreen.
///
/// This provider manages the state of the ArtistsOneScreen, including the
/// current artistsOneModelObj

// ignore_for_file: must_be_immutable
class ArtistsOneProvider extends ChangeNotifier {
  ArtistsOneModel artistsOneModelObj = ArtistsOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
