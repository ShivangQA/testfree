import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/top_playlists_screen/models/top_playlists_model.dart';
import '../models/playlistlist1_item_model.dart';

/// A provider class for the TopPlaylistsScreen.
///
/// This provider manages the state of the TopPlaylistsScreen, including the
/// current topPlaylistsModelObj

// ignore_for_file: must_be_immutable
class TopPlaylistsProvider extends ChangeNotifier {
  TopPlaylistsModel topPlaylistsModelObj = TopPlaylistsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
