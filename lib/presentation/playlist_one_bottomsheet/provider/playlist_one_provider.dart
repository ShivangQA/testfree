import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/playlist_one_bottomsheet/models/playlist_one_model.dart';

/// A provider class for the PlaylistOneBottomsheet.
///
/// This provider manages the state of the PlaylistOneBottomsheet, including the
/// current playlistOneModelObj
class PlaylistOneProvider extends ChangeNotifier {
  PlaylistOneModel playlistOneModelObj = PlaylistOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
