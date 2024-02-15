import '../models/songs4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

// ignore: must_be_immutable
class Songs4ItemWidget extends StatelessWidget {
  Songs4ItemWidget(
    this.songs4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Songs4ItemModel songs4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            height: 26.v,
            width: 28.h,
            margin: EdgeInsets.symmetric(vertical: 8.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      songs4ItemModelObj.count!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.296,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 26.v,
                      width: 28.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimaryContainer,
                        borderRadius: BorderRadius.circular(
                          14.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  songs4ItemModelObj.burning!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 3.v),
                Text(
                  songs4ItemModelObj.podvalCaplella!,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
