import '../models/albums_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

// ignore: must_be_immutable
class AlbumsItemWidget extends StatelessWidget {
  AlbumsItemWidget(
    this.albumsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AlbumsItemModel albumsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: albumsItemModelObj?.flowerPower,
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
                albumsItemModelObj.flowerPower1!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                albumsItemModelObj.rayCharles!,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 3.v),
              Text(
                albumsItemModelObj.zipcode!,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
