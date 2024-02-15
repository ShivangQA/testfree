import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/top_playlists_one_screen/models/top_playlists_one_model.dart';
import '../models/playlistlist_item_model.dart';

/// A provider class for the TopPlaylistsOneScreen.
///
/// This provider manages the state of the TopPlaylistsOneScreen, including the
/// current topPlaylistsOneModelObj

// ignore_for_file: must_be_immutable
class TopPlaylistsOneProvider extends ChangeNotifier {
  TopPlaylistsOneModel topPlaylistsOneModelObj = TopPlaylistsOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
