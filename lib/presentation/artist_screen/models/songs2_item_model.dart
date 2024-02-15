import '../../../core/app_export.dart';

/// This class is used in the [songs2_item_widget] screen.
class Songs2ItemModel {
  Songs2ItemModel({
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
