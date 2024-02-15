import '../home_page_screen/widgets/songs3_item_widget.dart';
import 'models/home_page_model.dart';
import 'models/songs3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/favorites_one_page/favorites_one_page.dart';
import 'package:shiv_s_application216/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:shiv_s_application216/widgets/custom_bottom_bar.dart';
import 'package:shiv_s_application216/widgets/custom_elevated_button.dart';
import 'provider/home_page_provider.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageScreenState createState() => HomePageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageProvider(),
      child: HomePageScreen(),
    );
  }
}

class HomePageScreenState extends State<HomePageScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 43.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 22.h),
                    child: Column(
                      children: [
                        Text(
                          "lbl_dashboard".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 52.v),
                        Text(
                          "lbl_listen_to_music".tr,
                          style: theme.textTheme.headlineMedium,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "msg_without_restrictions".tr,
                          style: theme.textTheme.headlineMedium,
                        ),
                        SizedBox(height: 44.v),
                        CustomElevatedButton(
                          width: 236.h,
                          text: "lbl_trial_version".tr,
                        ),
                        SizedBox(height: 40.v),
                        Text(
                          "msg_free_for_3_months".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 47.v),
                        _buildNewReleaseHeader(context),
                        SizedBox(height: 15.v),
                        _buildSongs(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewReleaseHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_new_releases".tr,
            style: CustomTextStyles.headlineMediumBold,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 8.v,
            ),
            child: Text(
              "lbl_view_all".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSongs(BuildContext context) {
    return SizedBox(
      height: 226.v,
      child: Consumer<HomePageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 5.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 21.h,
              );
            },
            itemCount: provider.homePageModelObj.songs3ItemList.length,
            itemBuilder: (context, index) {
              Songs3ItemModel model =
                  provider.homePageModelObj.songs3ItemList[index];
              return Songs3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
