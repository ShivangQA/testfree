import '../models/songs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

// ignore: must_be_immutable
class SongsItemWidget extends StatelessWidget {
  SongsItemWidget(
    this.songsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SongsItemModel songsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 181.v,
            width: 159.h,
            decoration: BoxDecoration(
              color: appTheme.yellow700,
              borderRadius: BorderRadius.circular(
                12.h,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            songsItemModelObj.urgentSiege!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 2.v),
          Text(
            songsItemModelObj.damnedAnthem!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
