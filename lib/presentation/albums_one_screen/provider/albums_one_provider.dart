import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/albums_one_screen/models/albums_one_model.dart';
import '../models/albums_item_model.dart';

/// A provider class for the AlbumsOneScreen.
///
/// This provider manages the state of the AlbumsOneScreen, including the
/// current albumsOneModelObj

// ignore_for_file: must_be_immutable
class AlbumsOneProvider extends ChangeNotifier {
  AlbumsOneModel albumsOneModelObj = AlbumsOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
