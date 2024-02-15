import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/artist_one_screen/models/artist_one_model.dart';
import '../models/songs5_item_model.dart';

/// A provider class for the ArtistOneScreen.
///
/// This provider manages the state of the ArtistOneScreen, including the
/// current artistOneModelObj

// ignore_for_file: must_be_immutable
class ArtistOneProvider extends ChangeNotifier {
  ArtistOneModel artistOneModelObj = ArtistOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
