import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/album_screen/models/album_model.dart';
import '../models/songs1_item_model.dart';

/// A provider class for the AlbumScreen.
///
/// This provider manages the state of the AlbumScreen, including the
/// current albumModelObj

// ignore_for_file: must_be_immutable
class AlbumProvider extends ChangeNotifier {
  AlbumModel albumModelObj = AlbumModel();

  @override
  void dispose() {
    super.dispose();
  }
}
