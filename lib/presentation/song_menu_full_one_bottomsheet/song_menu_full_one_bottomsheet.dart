import '../song_menu_full_one_bottomsheet/widgets/optionslist_item_widget.dart';
import 'models/optionslist_item_model.dart';
import 'models/song_menu_full_one_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/custom_icon_button.dart';
import 'provider/song_menu_full_one_provider.dart';

// ignore_for_file: must_be_immutable
class SongMenuFullOneBottomsheet extends StatefulWidget {
  const SongMenuFullOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  SongMenuFullOneBottomsheetState createState() =>
      SongMenuFullOneBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SongMenuFullOneProvider(),
      child: SongMenuFullOneBottomsheet(),
    );
  }
}

class SongMenuFullOneBottomsheetState
    extends State<SongMenuFullOneBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnError.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL29,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5.v,
            width: 35.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 23.v),
          _buildSongDetailsRow(context),
          SizedBox(height: 29.v),
          _buildOptionsList(context),
          SizedBox(height: 44.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSongDetailsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 79.v),
            child: CustomIconButton(
              height: 38.adaptSize,
              width: 38.adaptSize,
              padding: EdgeInsets.all(7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgBookmark,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 65.adaptSize,
                width: 65.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.red300,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_renaissance".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 138.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_podval_caplella".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Opacity(
                      opacity: 0.648,
                      child: Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          top: 9.v,
                          bottom: 5.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withOpacity(0.58),
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "lbl_3_43".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 79.v),
            child: CustomIconButton(
              height: 38.adaptSize,
              width: 38.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgQuestion,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOptionsList(BuildContext context) {
    return Consumer<SongMenuFullOneProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 8.v,
            );
          },
          itemCount:
              provider.songMenuFullOneModelObj.optionslistItemList.length,
          itemBuilder: (context, index) {
            OptionslistItemModel model =
                provider.songMenuFullOneModelObj.optionslistItemList[index];
            return OptionslistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
