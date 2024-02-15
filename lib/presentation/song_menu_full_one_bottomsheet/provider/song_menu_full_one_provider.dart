import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/song_menu_full_one_bottomsheet/models/song_menu_full_one_model.dart';
import '../models/optionslist_item_model.dart';

/// A provider class for the SongMenuFullOneBottomsheet.
///
/// This provider manages the state of the SongMenuFullOneBottomsheet, including the
/// current songMenuFullOneModelObj

// ignore_for_file: must_be_immutable
class SongMenuFullOneProvider extends ChangeNotifier {
  SongMenuFullOneModel songMenuFullOneModelObj = SongMenuFullOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
