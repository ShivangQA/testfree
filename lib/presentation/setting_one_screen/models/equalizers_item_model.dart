import '../../../core/app_export.dart';

/// This class is used in the [equalizers_item_widget] screen.
class EqualizersItemModel {
  EqualizersItemModel({
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
