import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../feature/profile/widget/global_text_style.dart';
import '../const/app_colors.dart';
import '../const/app_texts.dart';

class CustomButtonContainer extends StatelessWidget {
  const CustomButtonContainer(
      {super.key, this.text, required this.save, required this.cancel});
  final String? text;
  final VoidCallback save;
  final VoidCallback cancel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: save,
            child: Container(
              height: 46.h,
              width: 88.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.purplecolor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                text ?? AppTexts.save,
                style: globalTextStyle(
                  textAlign: TextAlign.center,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: cancel,
            child: Container(
              height: 46.h,
              width: 88.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                border: Border.all(color: AppColors.purplecolor),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                AppTexts.cancel,
                style: globalTextStyle(
                  textAlign: TextAlign.center,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.purplecolor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
