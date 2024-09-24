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
          borderRadius: BorderRadius.circular(10),
        ),
        content: SizedBox(
          width: 284,
          height: 166,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Are you sure that you would like to ",
                style: globalTextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "delete this chat?",
                style: globalTextStyle(fontSize: 16),
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
      );
    },
  );
}
