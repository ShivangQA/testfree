import '../../../core/app_export.dart';

/// This class is used in the [playlistlist1_item_widget] screen.
class Playlistlist1ItemModel {
  Playlistlist1ItemModel({
    this.renaissance,
    this.tracksCounter,
    this.duration,
    this.id,
  }) {
    renaissance = renaissance ?? "Renaissance";
    tracksCounter = tracksCounter ?? "843 tracks";
    duration = duration ?? "23 hours";
    id = id ?? "";
  }

  String? renaissance;

  String? tracksCounter;

  String? duration;

  String? id;
}
