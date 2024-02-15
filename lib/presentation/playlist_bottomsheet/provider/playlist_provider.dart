import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/playlist_bottomsheet/models/playlist_model.dart';

/// A provider class for the PlaylistBottomsheet.
///
/// This provider manages the state of the PlaylistBottomsheet, including the
/// current playlistModelObj
class PlaylistProvider extends ChangeNotifier {
  PlaylistModel playlistModelObj = PlaylistModel();

  @override
  void dispose() {
    super.dispose();
  }
}
