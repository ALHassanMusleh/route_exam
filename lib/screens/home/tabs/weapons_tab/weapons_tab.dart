import 'package:flutter/material.dart';
import 'package:route_exam/model/weapons_md.dart';
import 'package:route_exam/utils/app_assets.dart';
import 'package:route_exam/utils/app_colors.dart';
import 'package:route_exam/utils/app_styles.dart';

class WeaponsTab extends StatelessWidget {
  WeaponsTab({super.key});
  final List<WeaponsModel> weapons = [
    WeaponsModel(
      image: AppAssets.weapons_1,
      title: 'Odin',
      subTitle: 'Heavy Weapons',
      description:
          'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
    ),
    WeaponsModel(
      image: AppAssets.weapons_2,
      title: 'Vandal',
      subTitle: 'Assault Rifles',
      description:
          'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
    ),
    WeaponsModel(
      image: AppAssets.weapons_3,
      title: 'Ares',
      subTitle: 'Heavy Weapons',
      description:
          'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
    ),WeaponsModel(
      image: AppAssets.weapons_4,
      title: 'Ares',
      subTitle: 'Heavy Weapons',
      description:
          'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: weapons.length,
      itemBuilder: (context, index) =>
          BuildWeaponsItem(context, weapons[index]),
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
    );
  }

  Widget BuildWeaponsItem(context, WeaponsModel weapon) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: Stack(
          alignment: Alignment.centerLeft,
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
            Positioned.fill(
                top: -60,
                child: RotationTransition(
                    turns: new AlwaysStoppedAnimation(15 / 360),
                    child: Image.asset(
                      weapon.image,
                    ),),),
            Positioned(
              left: 8,
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
          ],
        ),
      );
}
