import '../models/equalizers1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

// ignore: must_be_immutable
class Equalizers1ItemWidget extends StatelessWidget {
  Equalizers1ItemWidget(
    this.equalizers1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Equalizers1ItemModel equalizers1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 31.h,
      child: Column(
        children: [
          Text(
            equalizers1ItemModelObj.dBCounter!,
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
            equalizers1ItemModelObj.hzCounter!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
