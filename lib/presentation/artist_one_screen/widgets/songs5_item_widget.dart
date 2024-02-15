import '../models/songs5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

// ignore: must_be_immutable
class Songs5ItemWidget extends StatelessWidget {
  Songs5ItemWidget(
    this.songs5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Songs5ItemModel songs5ItemModelObj;

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
          songs5ItemModelObj.urgentSiege!,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 2.v),
        Text(
          songs5ItemModelObj.damnedAnthem!,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
