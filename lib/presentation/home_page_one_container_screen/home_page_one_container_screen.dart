import 'models/home_page_one_container_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/favorites_one_page/favorites_one_page.dart';
import 'package:shiv_s_application216/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:shiv_s_application216/widgets/custom_bottom_bar.dart';
import 'provider/home_page_one_container_provider.dart';

class HomePageOneContainerScreen extends StatefulWidget {
  const HomePageOneContainerScreen({Key? key}) : super(key: key);

  @override
  HomePageOneContainerScreenState createState() =>
      HomePageOneContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomePageOneContainerProvider(),
        child: HomePageOneContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomePageOneContainerScreenState
    extends State<HomePageOneContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePageOnePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
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
}
