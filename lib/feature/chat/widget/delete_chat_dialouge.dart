import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/const/app_colors.dart';
import '../../profile/widget/global_text_style.dart';

void deleteChatDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        content: SingleChildScrollView(
          // Added SingleChildScrollView to prevent overflow
          child: SizedBox(
            // Remove hardcoded height to let the dialog adjust its height dynamically
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize
                  .min, // Use min to allow the Column to shrink based on content
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Are you sure that you would like to delete this chat? ",
                  style: globalTextStyle(fontSize: 16),
                  textAlign: TextAlign
                      .center, // Added text alignment to center the text
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 46.h,
                        width: 120.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.purplecolor,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'Yes',
                            style: globalTextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 46.h,
                        width: 120.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.whiteColor,
                            side: BorderSide(color: AppColors.purplecolor),
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'No',
                            style: globalTextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
