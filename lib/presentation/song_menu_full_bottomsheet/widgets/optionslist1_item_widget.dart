import '../models/optionslist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Optionslist1ItemWidget extends StatelessWidget {
  Optionslist1ItemWidget(
    this.optionslist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Optionslist1ItemModel optionslist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      height: 57.v,
      width: 366.h,
      text: "lbl_add_to_playlist".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGrid,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL9,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }
}
