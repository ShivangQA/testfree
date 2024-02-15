import '../models/playlistlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Playlistlist1ItemWidget extends StatelessWidget {
  Playlistlist1ItemWidget(
    this.playlistlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Playlistlist1ItemModel playlistlist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.gradientErrorContainerToGreenA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 38.adaptSize,
            width: 38.adaptSize,
            padding: EdgeInsets.all(7.h),
            child: CustomImageView(),
          ),
          SizedBox(height: 38.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      playlistlist1ItemModelObj.renaissance!,
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      children: [
                        Text(
                          playlistlist1ItemModelObj.tracksCounter!,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Opacity(
                          opacity: 0.648,
                          child: Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 11.v,
                              bottom: 4.v,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  theme.colorScheme.primary.withOpacity(0.58),
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            playlistlist1ItemModelObj.duration!,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomIconButton(
                height: 59.adaptSize,
                width: 59.adaptSize,
                padding: EdgeInsets.all(10.h),
                decoration: IconButtonStyleHelper.fillOnError,
                child: CustomImageView(),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
