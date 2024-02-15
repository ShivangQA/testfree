import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/album_one_screen/models/album_one_model.dart';
import '../models/songs4_item_model.dart';

/// A provider class for the AlbumOneScreen.
///
/// This provider manages the state of the AlbumOneScreen, including the
/// current albumOneModelObj

// ignore_for_file: must_be_immutable
class AlbumOneProvider extends ChangeNotifier {
  AlbumOneModel albumOneModelObj = AlbumOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
