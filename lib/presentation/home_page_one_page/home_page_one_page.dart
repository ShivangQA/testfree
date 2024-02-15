import '../home_page_one_page/widgets/songs_item_widget.dart';
import 'models/home_page_one_model.dart';
import 'models/songs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/custom_elevated_button.dart';
import 'provider/home_page_one_provider.dart';

// ignore_for_file: must_be_immutable
class HomePageOnePage extends StatefulWidget {
  const HomePageOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageOnePageState createState() => HomePageOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageOneProvider(),
      child: HomePageOnePage(),
    );
  }
}

class HomePageOnePageState extends State<HomePageOnePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnError,
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
      child: Consumer<HomePageOneProvider>(
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
            itemCount: provider.homePageOneModelObj.songsItemList.length,
            itemBuilder: (context, index) {
              SongsItemModel model =
                  provider.homePageOneModelObj.songsItemList[index];
              return SongsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
