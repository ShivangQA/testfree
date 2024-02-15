import '../../../core/app_export.dart';

/// This class is used in the [songs4_item_widget] screen.
class Songs4ItemModel {
  Songs4ItemModel({
    this.count,
    this.burning,
    this.podvalCaplella,
    this.id,
  }) {
    count = count ?? "1";
    burning = burning ?? "Burning";
    podvalCaplella = podvalCaplella ?? "Podval Caplella";
    id = id ?? "";
  }

  String? count;

  String? burning;

  String? podvalCaplella;

  String? id;
}
