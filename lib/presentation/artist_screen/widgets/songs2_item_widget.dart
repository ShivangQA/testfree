import '../models/songs2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

// ignore: must_be_immutable
class Songs2ItemWidget extends StatelessWidget {
  Songs2ItemWidget(
    this.songs2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Songs2ItemModel songs2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          songs2ItemModelObj.urgentSiege!,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 2.v),
        Text(
          songs2ItemModelObj.damnedAnthem!,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
