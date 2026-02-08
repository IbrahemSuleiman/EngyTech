// -----------------------------------------------------------------------------
import 'package:engytech/themes/app_colors.dart';
import 'package:engytech/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildbottomNavigationBar(
  String iconpath,
  BuildContext context,
  String label, {
  required VoidCallback onTap,
  double fontSize = 12.0,
  bool isSelected = false,
}) {
  final Orientation orientation = MediaQuery.of(context).orientation;

  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isSelected ? AppColors.selectedIcon : AppColors.white,
              width: 2,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              iconpath,
              width: 24.0,
              height: 24.0,
              colorFilter: ColorFilter.mode(
                isSelected ? AppColors.selectedIcon : AppColors.visualTeal,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              label,
              style: AppFonts.genericText(
                orientation: orientation,
                "Lufga-regular",
                fontSize,
                FontWeight.w400,
                isSelected ? AppColors.selectedIcon : AppColors.visualTeal,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// -----------------------------------------------------------------------------
Widget buildStartCard(
  BuildContext context,
  String title,
  String subTitle,
  String iconpath,
) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Back arrow on the left
          Icon(Icons.arrow_back_ios, size: 18, color: Colors.grey[700]),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                SizedBox(height: 5),
                Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  softWrap: true,
                ),
              ],
            ),
          ),

          SvgPicture.asset(
            iconpath,
            width: 50.0,
            height: 50.0,
            colorFilter: ColorFilter.mode(
              AppColors.visualTeal,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    ),
  );
}

// -----------------------------------------------------------------------------
