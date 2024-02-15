import '../top_playlists_one_screen/widgets/playlistlist_item_widget.dart';
import 'models/playlistlist_item_model.dart';
import 'models/top_playlists_one_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/favorites_one_page/favorites_one_page.dart';
import 'package:shiv_s_application216/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_subtitle.dart';
import 'package:shiv_s_application216/widgets/app_bar/custom_app_bar.dart';
import 'package:shiv_s_application216/widgets/custom_bottom_bar.dart';
import 'provider/top_playlists_one_provider.dart';

class TopPlaylistsOneScreen extends StatefulWidget {
  const TopPlaylistsOneScreen({Key? key}) : super(key: key);

  @override
  TopPlaylistsOneScreenState createState() => TopPlaylistsOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TopPlaylistsOneProvider(),
        child: TopPlaylistsOneScreen());
  }
}

// ignore_for_file: must_be_immutable
class TopPlaylistsOneScreenState extends State<TopPlaylistsOneScreen> {
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  _buildPlaylistList(context),
                  Spacer()
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
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
              text: "lbl_top_playlists".tr,
              margin: EdgeInsets.symmetric(horizontal: 85.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildPlaylistList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Consumer<TopPlaylistsOneProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 18.v);
              },
              itemCount:
                  provider.topPlaylistsOneModelObj.playlistlistItemList.length,
              itemBuilder: (context, index) {
                PlaylistlistItemModel model = provider
                    .topPlaylistsOneModelObj.playlistlistItemList[index];
                return PlaylistlistItemWidget(model);
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
