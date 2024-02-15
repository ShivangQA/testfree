import '../artist_one_screen/widgets/songs5_item_widget.dart';
import 'models/artist_one_model.dart';
import 'models/songs5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_subtitle.dart';
import 'package:shiv_s_application216/widgets/app_bar/custom_app_bar.dart';
import 'package:shiv_s_application216/widgets/custom_icon_button.dart';
import 'provider/artist_one_provider.dart';

class ArtistOneScreen extends StatefulWidget {
  const ArtistOneScreen({Key? key}) : super(key: key);

  @override
  ArtistOneScreenState createState() => ArtistOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ArtistOneProvider(), child: ArtistOneScreen());
  }
}

class ArtistOneScreenState extends State<ArtistOneScreen> {
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
                padding:
                    EdgeInsets.only(left: 27.h, right: 27.h, bottom: 125.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 82.v),
                  CustomIconButton(
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgBookmark)),
                  SizedBox(height: 8.v),
                  Text("lbl_renaissance".tr,
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 9.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("lbl_843_tracks".tr, style: theme.textTheme.bodyLarge),
                    Opacity(
                        opacity: 0.648,
                        child: Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(
                                left: 4.h, top: 11.v, bottom: 4.v),
                            decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.58),
                                borderRadius: BorderRadius.circular(1.h)))),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text("lbl_23_albums".tr,
                            style: theme.textTheme.bodyLarge))
                  ]),
                  SizedBox(height: 89.v),
                  _buildSongs(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 21.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitle(
              text: "lbl_renaissance".tr,
              margin: EdgeInsets.symmetric(horizontal: 85.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildSongs(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Consumer<ArtistOneProvider>(builder: (context, provider, child) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 227.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.h,
                  crossAxisSpacing: 15.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: provider.artistOneModelObj.songs5ItemList.length,
              itemBuilder: (context, index) {
                Songs5ItemModel model =
                    provider.artistOneModelObj.songs5ItemList[index];
                return Songs5ItemWidget(model);
              });
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
