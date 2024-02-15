import '../album_screen/widgets/songs1_item_widget.dart';
import 'models/album_model.dart';
import 'models/songs1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_subtitle.dart';
import 'package:shiv_s_application216/widgets/app_bar/custom_app_bar.dart';
import 'package:shiv_s_application216/widgets/custom_icon_button.dart';
import 'provider/album_provider.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  AlbumScreenState createState() => AlbumScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AlbumProvider(), child: AlbumScreen());
  }
}

class AlbumScreenState extends State<AlbumScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 22.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgThumbnailPinkA100,
                      height: 100.adaptSize,
                      width: 100.adaptSize),
                  SizedBox(height: 41.v),
                  Text("lbl_wunder_king".tr,
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 6.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl".tr, style: theme.textTheme.bodyLarge),
                        Opacity(
                            opacity: 0.648,
                            child: Container(
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 4.h, top: 11.v, bottom: 5.v),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary
                                        .withOpacity(0.58),
                                    borderRadius: BorderRadius.circular(1.h)))),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_2018".tr,
                                style: theme.textTheme.bodyLarge))
                      ]),
                  SizedBox(height: 22.v),
                  SizedBox(
                      height: 54.v,
                      width: 198.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            height: 25.v,
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
                                          height: 38.adaptSize,
                                          width: 38.adaptSize,
                                          padding: EdgeInsets.all(8.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgQuestion)),
                                      CustomIconButton(
                                          height: 38.adaptSize,
                                          width: 38.adaptSize,
                                          padding: EdgeInsets.all(7.h),
                                          child: CustomImageView())
                                    ])))
                      ])),
                  SizedBox(height: 41.v),
                  _buildSongs(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 19.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitle(
              text: "lbl_wunder_king".tr,
              margin: EdgeInsets.symmetric(horizontal: 84.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildSongs(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 164.h),
            child: Consumer<AlbumProvider>(builder: (context, provider, child) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 18.v);
                  },
                  itemCount: provider.albumModelObj.songs1ItemList.length,
                  itemBuilder: (context, index) {
                    Songs1ItemModel model =
                        provider.albumModelObj.songs1ItemList[index];
                    return Songs1ItemWidget(model);
                  });
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
