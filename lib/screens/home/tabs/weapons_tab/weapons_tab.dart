import 'package:flutter/material.dart';
import 'package:route_exam/model/weapons_md.dart';
import 'package:route_exam/utils/app_colors.dart';
import 'package:route_exam/utils/app_constants.dart';
import 'package:route_exam/utils/app_styles.dart';

class WeaponsTab extends StatelessWidget {
  const WeaponsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: AppConstants.weapons.length,
      itemBuilder: (context, index) =>
          BuildWeaponsItem(context, AppConstants.weapons[index], index),
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
    );
  }

  Widget BuildWeaponsItem(context, WeaponsModel weapon, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: Stack(
          alignment: index % 2 == 0 ?  Alignment.bottomLeft : Alignment.bottomRight,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .16,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.color,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Positioned(
              right: index % 2 == 0 ? null : 8,
              left: index % 2 == 0 ? 8 : null,
              bottom: 10,
              child: Column(
                children: [
                  Text(
                    weapon.title,
                    style: AppStyles.titleTextStyle,
                  ),
                  Text(
                    weapon.subTitle,
                    style: AppStyles.subTitleTextStyle,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              right: index % 2 == 0 ? 0 : 20,
              left: index % 2 == 0 ? 20 : 0,
              bottom: 10,
              child: Transform.rotate(
                angle: index % 2 == 0 ? 6.6 : -20 * 3.1415926535897932 / 180,
                child: Image.asset(
                  weapon.image,
                ),
              ),
            ),
          ],
        ),
      );
}
