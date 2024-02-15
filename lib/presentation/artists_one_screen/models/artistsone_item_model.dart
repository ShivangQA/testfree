import '../../../core/app_export.dart';

/// This class is used in the [artistsone_item_widget] screen.
class ArtistsoneItemModel {
  ArtistsoneItemModel({
    this.danheim,
    this.tracksCounter,
    this.albumsCounter,
    this.id,
  }) {
    danheim = danheim ?? "Danheim";
    tracksCounter = tracksCounter ?? "843 tracks";
    albumsCounter = albumsCounter ?? "3 albums";
    id = id ?? "";
  }

  String? danheim;

  String? tracksCounter;

  String? albumsCounter;

  String? id;
}
