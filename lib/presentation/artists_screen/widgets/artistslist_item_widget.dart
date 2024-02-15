import '../models/artistslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

// ignore: must_be_immutable
class ArtistslistItemWidget extends StatelessWidget {
  ArtistslistItemWidget(
    this.artistslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistslistItemModel artistslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 78.v,
          width: 105.h,
          decoration: BoxDecoration(
            color: appTheme.gray300,
            borderRadius: BorderRadius.circular(
              52.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 15.v,
            bottom: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                artistslistItemModelObj.danheim!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  artistslistItemModelObj.tracksCounter!,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.648,
          child: Container(
            height: 3.v,
            width: 4.h,
            margin: EdgeInsets.only(
              top: 53.v,
              bottom: 22.v,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.58),
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 6.h,
            top: 42.v,
            bottom: 17.v,
          ),
          child: Text(
            artistslistItemModelObj.albumsCounter!,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
