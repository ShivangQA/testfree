import '../albums_screen/widgets/albumlist_item_widget.dart';
import 'models/albumlist_item_model.dart';
import 'models/albums_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiv_s_application216/widgets/app_bar/appbar_subtitle.dart';
import 'package:shiv_s_application216/widgets/app_bar/custom_app_bar.dart';
import 'provider/albums_provider.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  AlbumsScreenState createState() => AlbumsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AlbumsProvider(), child: AlbumsScreen());
  }
}

class AlbumsScreenState extends State<AlbumsScreen> {
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
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: _buildAlbumList(context)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 20.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitle(
              text: "lbl_albums".tr,
              margin: EdgeInsets.fromLTRB(75.h, 16.v, 75.h, 17.v))
        ]);
  }

  /// Section Widget
  Widget _buildAlbumList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 112.h),
        child: Consumer<AlbumsProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 17.v);
              },
              itemCount: provider.albumsModelObj.albumlistItemList.length,
              itemBuilder: (context, index) {
                AlbumlistItemModel model =
                    provider.albumsModelObj.albumlistItemList[index];
                return AlbumlistItemWidget(model);
              });
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
