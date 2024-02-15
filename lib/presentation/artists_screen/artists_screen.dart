import '../artists_screen/widgets/artistslist_item_widget.dart';
import 'models/artists_model.dart';
import 'models/artistslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/favorites_one_page/favorites_one_page.dart';
import 'package:shiv_s_application216/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_subtitle.dart';
import 'package:shiv_s_application216/widgets/app_bar/custom_app_bar.dart';
import 'package:shiv_s_application216/widgets/custom_bottom_bar.dart';
import 'provider/artists_provider.dart';

class ArtistsScreen extends StatefulWidget {
  const ArtistsScreen({Key? key}) : super(key: key);

  @override
  ArtistsScreenState createState() => ArtistsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ArtistsProvider(), child: ArtistsScreen());
  }
}

// ignore_for_file: must_be_immutable
class ArtistsScreenState extends State<ArtistsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildArtist1(context),
                      SizedBox(height: 17.v),
                      _buildArtistsList(context)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 21.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitle(
              text: "lbl_artists".tr,
              margin: EdgeInsets.symmetric(horizontal: 71.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildArtist1(BuildContext context) {
    return Row(children: [
      Container(
          height: 78.adaptSize,
          width: 78.adaptSize,
          decoration: BoxDecoration(
              color: appTheme.green300,
              borderRadius: BorderRadius.circular(39.h))),
      Padding(
          padding: EdgeInsets.only(left: 13.h, top: 15.v, bottom: 17.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_lorn".tr, style: theme.textTheme.titleMedium),
            SizedBox(height: 5.v),
            SizedBox(
                width: 162.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("lbl_843_tracks".tr,
                          style: theme.textTheme.bodyLarge),
                      Opacity(
                          opacity: 0.648,
                          child: Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(top: 11.v, bottom: 4.v),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary
                                      .withOpacity(0.58),
                                  borderRadius: BorderRadius.circular(1.h)))),
                      Text("lbl_23_albums".tr, style: theme.textTheme.bodyLarge)
                    ]))
          ])),
      Spacer(),
      Opacity(
          opacity: 0.503,
          child: CustomImageView(
              imagePath: ImageConstant.imgMoreIcon,
              height: 4.v,
              width: 20.h,
              margin: EdgeInsets.symmetric(vertical: 37.v)))
    ]);
  }

  /// Section Widget
  Widget _buildArtistsList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 22.h),
        child: Consumer<ArtistsProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 17.v);
              },
              itemCount: provider.artistsModelObj.artistslistItemList.length,
              itemBuilder: (context, index) {
                ArtistslistItemModel model =
                    provider.artistsModelObj.artistslistItemList[index];
                return ArtistslistItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageOnePage;
      case BottomBarEnum.Top:
        return "/";
      case BottomBarEnum.Favorites:
        return AppRoutes.favoritesOnePage;
      case BottomBarEnum.Search:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePageOnePage:
        return HomePageOnePage.builder(context);
      case AppRoutes.favoritesOnePage:
        return FavoritesOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
