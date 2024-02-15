import '../../../core/app_export.dart';

/// This class is used in the [equalizers1_item_widget] screen.
class Equalizers1ItemModel {
  Equalizers1ItemModel({
    this.dBCounter,
    this.hzCounter,
    this.id,
  }) {
    dBCounter = dBCounter ?? "4 dB";
    hzCounter = hzCounter ?? "60 Hz";
    id = id ?? "";
  }

  String? dBCounter;

  String? hzCounter;

  String? id;
}
