import 'models/favorites_one_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_subtitle.dart';
import 'package:shiv_s_application216/widgets/app_bar/custom_app_bar.dart';
import 'package:shiv_s_application216/widgets/custom_icon_button.dart';
import 'provider/favorites_one_provider.dart';

class FavoritesOnePage extends StatefulWidget {
  const FavoritesOnePage({Key? key}) : super(key: key);

  @override
  FavoritesOnePageState createState() => FavoritesOnePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FavoritesOneProvider(), child: FavoritesOnePage());
  }
}

class FavoritesOnePageState extends State<FavoritesOnePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 37.v),
                child: Column(children: [
                  _buildPlaylistSuggestion(context),
                  SizedBox(height: 21.v),
                  _buildFrameOne(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 46.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 21.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitle(
              text: "lbl_favourites".tr,
              margin: EdgeInsets.symmetric(horizontal: 81.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildPlaylistSuggestion(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 24.v),
        decoration: AppDecoration.gradientYellowToDeepOrangeA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 75.v, bottom: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_did_you_like_it".tr,
                            style: theme.textTheme.headlineMedium),
                        SizedBox(height: 3.v),
                        Text("lbl_843_tracks".tr,
                            style: theme.textTheme.bodyLarge)
                      ])),
              Padding(
                  padding: EdgeInsets.only(top: 73.v),
                  child: CustomIconButton(
                      height: 59.adaptSize,
                      width: 59.adaptSize,
                      decoration: IconButtonStyleHelper.fillOnError,
                      child: CustomImageView()))
            ]));
  }

  /// Section Widget
  Widget _buildFrameOne(BuildContext context) {
    return Column(children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 15.v),
          decoration: AppDecoration.fillPrimary1
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomImageView(
                imagePath: ImageConstant.imgTracksIcon,
                height: 24.v,
                width: 19.h,
                margin: EdgeInsets.only(top: 1.v)),
            Padding(
                padding: EdgeInsets.only(left: 121.h, top: 1.v, bottom: 5.v),
                child: Text("lbl_tracks".tr, style: theme.textTheme.bodyLarge))
          ])),
      SizedBox(height: 8.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 15.v),
          decoration: AppDecoration.fillPrimary1
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.v,
                width: 21.h,
                margin: EdgeInsets.only(top: 1.v)),
            Padding(
                padding: EdgeInsets.only(left: 124.h, top: 1.v, bottom: 5.v),
                child: Text("lbl_artist".tr, style: theme.textTheme.bodyLarge))
          ])),
      SizedBox(height: 8.v),
      SizedBox(
          height: 57.v,
          width: 366.h,
          child: Stack(alignment: Alignment.topLeft, children: [
            Opacity(
                opacity: 0.14,
                child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 57.v,
                        width: 366.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(9.h))))),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 18.h, top: 16.v),
                    child:
                        Text("lbl_album".tr, style: theme.textTheme.bodyLarge)))
          ])),
      SizedBox(height: 8.v),
      SizedBox(
          height: 57.v,
          width: 366.h,
          child: Stack(alignment: Alignment.centerLeft, children: [
            Opacity(
                opacity: 0.14,
                child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 57.v,
                        width: 366.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(9.h))))),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text("lbl_playlists".tr,
                        style: CustomTextStyles.titleMediumBold)))
          ])),
      SizedBox(height: 8.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
          decoration: AppDecoration.fillPrimary1
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomImageView(
                imagePath: ImageConstant.imgDownload,
                height: 23.adaptSize,
                width: 23.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 103.h, bottom: 4.v),
                child: Text("lbl_download".tr,
                    style: CustomTextStyles.titleMediumBold))
          ]))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
