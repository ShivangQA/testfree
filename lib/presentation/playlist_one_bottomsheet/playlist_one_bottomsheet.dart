import 'models/playlist_one_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'provider/playlist_one_provider.dart';

// ignore_for_file: must_be_immutable
class PlaylistOneBottomsheet extends StatefulWidget {
  const PlaylistOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  PlaylistOneBottomsheetState createState() => PlaylistOneBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PlaylistOneProvider(),
      child: PlaylistOneBottomsheet(),
    );
  }
}

class PlaylistOneBottomsheetState extends State<PlaylistOneBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 177.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnError.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL29,
      ),
      child: Opacity(
        opacity: 0.445,
        child: Container(
          height: 5.v,
          width: 35.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(0.51),
            borderRadius: BorderRadius.circular(
              2.h,
            ),
          ),
        ),
      ),
    );
  }
}
