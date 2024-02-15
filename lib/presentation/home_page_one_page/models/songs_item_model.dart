import '../../../core/app_export.dart';

/// This class is used in the [songs_item_widget] screen.
class SongsItemModel {
  SongsItemModel({
    this.urgentSiege,
    this.damnedAnthem,
    this.id,
  }) {
    urgentSiege = urgentSiege ?? "Urgent Siege";
    damnedAnthem = damnedAnthem ?? "Damned Anthem";
    id = id ?? "";
  }

  String? urgentSiege;

  String? damnedAnthem;

  String? id;
}
