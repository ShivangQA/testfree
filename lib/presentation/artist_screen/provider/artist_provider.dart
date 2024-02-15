import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/artist_screen/models/artist_model.dart';
import '../models/songs2_item_model.dart';

/// A provider class for the ArtistScreen.
///
/// This provider manages the state of the ArtistScreen, including the
/// current artistModelObj

// ignore_for_file: must_be_immutable
class ArtistProvider extends ChangeNotifier {
  ArtistModel artistModelObj = ArtistModel();

  @override
  void dispose() {
    super.dispose();
  }
}
