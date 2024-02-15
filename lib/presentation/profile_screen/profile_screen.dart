import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_title.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/custom_app_bar.dart';
import 'provider/profile_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileProvider(), child: ProfileScreen());
  }
}

class ProfileScreenState extends State<ProfileScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 25.v),
                child: Column(children: [
                  Container(
                      height: 97.adaptSize,
                      width: 97.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.deepOrange100,
                          borderRadius: BorderRadius.circular(48.h))),
                  SizedBox(height: 9.v),
                  Text("lbl_erlik_bachman".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 7.v),
                  Text("msg_bachman_mail_com".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 48.v),
                  _buildSubscriptionDetails(context),
                  SizedBox(height: 27.v),
                  _buildRestorePurchases(context),
                  SizedBox(height: 8.v),
                  _buildEnterPromoCode(context),
                  SizedBox(height: 8.v),
                  _buildQuit(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 31.h, top: 17.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_profile".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgClose,
              margin: EdgeInsets.fromLTRB(30.h, 23.v, 30.h, 19.v))
        ]);
  }

  /// Section Widget
  Widget _buildSubscriptionDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 109.h, vertical: 19.v),
        decoration: AppDecoration.fillOnError1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_my_subscription".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 5.v),
              Text("msg_valid_until_may".tr, style: theme.textTheme.bodyMedium)
            ]));
  }

  /// Section Widget
  Widget _buildRestorePurchases(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 116.h, vertical: 18.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("msg_restore_purchases".tr, style: theme.textTheme.bodyLarge)
        ]));
  }

  /// Section Widget
  Widget _buildEnterPromoCode(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 118.h, vertical: 19.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("msg_enter_promo_code".tr, style: theme.textTheme.bodyLarge)
        ]));
  }

  /// Section Widget
  Widget _buildQuit(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 167.h, vertical: 19.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("lbl_quit".tr, style: theme.textTheme.bodyLarge)]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
