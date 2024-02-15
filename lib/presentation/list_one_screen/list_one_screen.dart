import 'models/list_one_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_subtitle.dart';
import 'package:shiv_s_application216/widgets/app_bar/custom_app_bar.dart';
import 'package:shiv_s_application216/widgets/custom_icon_button.dart';
import 'provider/list_one_provider.dart';

class ListOneScreen extends StatefulWidget {
  const ListOneScreen({Key? key}) : super(key: key);

  @override
  ListOneScreenState createState() => ListOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ListOneProvider(), child: ListOneScreen());
  }
}

class ListOneScreenState extends State<ListOneScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 18.v),
                child: Column(children: [
                  Container(
                      height: 143.v,
                      width: 136.h,
                      decoration: BoxDecoration(
                          color: appTheme.redA200,
                          borderRadius: BorderRadius.circular(71.h))),
                  SizedBox(height: 4.v),
                  Text("lbl_renaissance".tr,
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 10.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("lbl_843_tracks".tr, style: theme.textTheme.bodyLarge),
                    Opacity(
                        opacity: 0.648,
                        child: Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(
                                left: 4.h, top: 12.v, bottom: 3.v),
                            decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.58),
                                borderRadius: BorderRadius.circular(1.h)))),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text("lbl_23_hours".tr,
                            style: theme.textTheme.bodyLarge))
                  ]),
                  SizedBox(height: 22.v),
                  SizedBox(
                      height: 56.v,
                      width: 198.h,
                      child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                                height: 26.v,
                                width: 27.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 64.h)),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 16.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomIconButton(
                                              height: 40.v,
                                              width: 38.h,
                                              padding: EdgeInsets.all(8.h),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgQuestion)),
                                          SizedBox(
                                              height: 40.v,
                                              width: 38.h,
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.297,
                                                        child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: 40.v,
                                                                width: 38.h,
                                                                decoration: BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .onPrimaryContainer,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.h))))),
                                                    CustomImageView(
                                                        height: 2.adaptSize,
                                                        width: 2.adaptSize,
                                                        alignment:
                                                            Alignment.topLeft,
                                                        margin: EdgeInsets.only(
                                                            left: 10.h,
                                                            top: 8.v))
                                                  ]))
                                        ])))
                          ])),
                  Spacer(flex: 43),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Container(
                            height: 26.v,
                            width: 62.h,
                            margin: EdgeInsets.symmetric(vertical: 8.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Text("lbl_1".tr,
                                          style: theme.textTheme.titleMedium))),
                              Opacity(
                                  opacity: 0.296,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 26.v,
                                          width: 62.h,
                                          decoration: BoxDecoration(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      31.h)))))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(left: 38.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_burning".tr,
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 3.v),
                                  Text("lbl_podval_caplella".tr,
                                      style: theme.textTheme.bodyMedium)
                                ]))
                      ])),
                  SizedBox(height: 19.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Container(
                            height: 26.v,
                            width: 64.h,
                            margin: EdgeInsets.only(top: 10.v, bottom: 6.v),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Opacity(
                                  opacity: 0.296,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 26.v,
                                          width: 64.h,
                                          decoration: BoxDecoration(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      32.h))))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Text("lbl_2".tr,
                                          style: theme.textTheme.titleMedium)))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(left: 39.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_flashbacks".tr,
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 4.v),
                                  Text("lbl_emika".tr,
                                      style: theme.textTheme.bodyMedium)
                                ]))
                      ])),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Container(
                            height: 26.v,
                            width: 59.h,
                            margin: EdgeInsets.only(top: 10.v, bottom: 7.v),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Opacity(
                                  opacity: 0.296,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 26.v,
                                          width: 59.h,
                                          decoration: BoxDecoration(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      29.h))))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 18.h),
                                      child: Text("lbl_3".tr,
                                          style: theme.textTheme.titleMedium)))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(left: 36.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_renaissance".tr,
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 5.v),
                                  Text("lbl_podval_caplella".tr,
                                      style: theme.textTheme.bodyMedium)
                                ]))
                      ])),
                  Spacer(flex: 56)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 19.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitle(
              text: "lbl_playlists".tr,
              margin: EdgeInsets.symmetric(horizontal: 76.h, vertical: 16.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
