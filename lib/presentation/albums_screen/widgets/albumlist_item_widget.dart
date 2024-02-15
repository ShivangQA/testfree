import '../models/albumlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

// ignore: must_be_immutable
class AlbumlistItemWidget extends StatelessWidget {
  AlbumlistItemWidget(
    this.albumlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AlbumlistItemModel albumlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: albumlistItemModelObj?.flowerPower,
          height: 78.v,
          width: 86.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 3.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                albumlistItemModelObj.flowerPower1!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                albumlistItemModelObj.rayCharles!,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 3.v),
              Text(
                albumlistItemModelObj.zipcode!,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
