import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

class ItemContainer extends StatelessWidget {
  final String image;
  final String title;
  final int price;
  final String description;
  final VoidCallback? onPressed;
  final VoidCallback? onAddPressed;
  final bool showAddIcon;

  const ItemContainer({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    this.onPressed,
    this.onAddPressed,
    this.showAddIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.08),
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.line),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  width: 90.w,
                  height: 90.w,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(width: 12.w),

              // CONTENT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TITLE
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),

                    SizedBox(height: 4.h),

                    // DESCRIPTION
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.textMuted,
                        height: 1.3,
                      ),
                    ),

                    SizedBox(height: 8.h),

                    // PRICE
                    Text(
                      'Rp ${price.toString()}',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.sand,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
              ),
              if (showAddIcon)
                Container(
                  margin: EdgeInsets.only(left: 8.w),
                  decoration: BoxDecoration(
                    color: AppColors.sand.withOpacity(0.15),
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.line),
                  ),
                  child: InkWell(
                    onTap: onAddPressed,
                    customBorder: const CircleBorder(),
                    child: Padding(
                      padding: EdgeInsets.all(6.w),
                      child: Icon(
                        Icons.add,
                        size: 18.sp,
                        color: AppColors.ink,
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
}
