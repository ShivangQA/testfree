import '../models/equalizers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

// ignore: must_be_immutable
class EqualizersItemWidget extends StatelessWidget {
  EqualizersItemWidget(
    this.equalizersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EqualizersItemModel equalizersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 31.h,
      child: Column(
        children: [
          Text(
            equalizersItemModelObj.dBCounter!,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 298.v,
            width: 19.h,
          ),
          SizedBox(height: 7.v),
          Text(
            equalizersItemModelObj.hzCounter!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
