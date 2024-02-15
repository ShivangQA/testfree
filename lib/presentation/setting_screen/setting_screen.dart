import '../setting_screen/widgets/equalizers1_item_widget.dart';
import 'models/equalizers1_item_model.dart';
import 'models/setting_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_title.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/custom_app_bar.dart';
import 'provider/setting_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  SettingScreenState createState() => SettingScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingProvider(), child: SettingScreen());
  }
}

class SettingScreenState extends State<SettingScreen> {
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildEqualizers(context),
                      SizedBox(height: 39.v),
                      Text("lbl_my_settings".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 30.v),
                      Text("lbl_default".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      Text("lbl_club_music".tr,
                          style: CustomTextStyles.bodyLargeTealA400),
                      SizedBox(height: 32.v),
                      Text("lbl_classical_music".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      Text("lbl_dance_music".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 33.v),
                      Text("msg_low_frequency_gain".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      Text("msg_low_frequency_gain".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 2.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 35.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 25.h, top: 15.v, bottom: 22.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_equalizer".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgClose,
              margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 21.v))
        ]);
  }

  /// Section Widget
  Widget _buildEqualizers(BuildContext context) {
    return SizedBox(
        height: 342.v,
        child: Consumer<SettingProvider>(builder: (context, provider, child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 21.h);
              },
              itemCount: provider.settingModelObj.equalizers1ItemList.length,
              itemBuilder: (context, index) {
                Equalizers1ItemModel model =
                    provider.settingModelObj.equalizers1ItemList[index];
                return Equalizers1ItemWidget(model);
              });
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
