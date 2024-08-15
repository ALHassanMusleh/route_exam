import 'package:flutter/material.dart';
import 'package:route_exam/model/maps_md.dart';
import 'package:route_exam/utils/app_assets.dart';
import 'package:route_exam/utils/app_colors.dart';
import 'package:route_exam/utils/app_styles.dart';

class MapsTab extends StatelessWidget {
   MapsTab({super.key});

  final List<MapsModel> maps = [
    MapsModel(
     splahBg: AppAssets.splashMaps_1,
      maps_image: AppAssets.maps_1,
      title: 'Ascent',
      description:
      'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
      colors: [
        Color(0xffFD4556).withOpacity(.5),
        Color(0xffFD4556).withOpacity(0.0),
      ],
    ),
    MapsModel(
     splahBg: AppAssets.splashMaps_2,
      maps_image: AppAssets.maps_2,
      title: 'Split',
      description:
      'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
      colors: [
        Color(0xffFD4556).withOpacity(.5),
        Color(0xffFD4556).withOpacity(0.0),
      ],
    ),
    MapsModel(
     splahBg: AppAssets.splashMaps_3,
      maps_image: AppAssets.maps_3,
      title: 'Split',
      description:
      'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
      colors: [
        Color(0xffFD4556).withOpacity(.5),
        Color(0xffFD4556).withOpacity(0.0),
      ],
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return ListView.separated(

      itemCount: maps.length,
      itemBuilder: (context, index) =>
          BuildMapsItem(context,maps[index]),
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
    );
  }

  Widget BuildMapsItem(context,MapsModel map) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .27,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(map.splahBg,),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(16),

              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Text(
                map.title,
                style:AppStyles.titleTextStyle,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .27,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: map.colors,
                ),
              ),
            ),
            Align(alignment: Alignment.topRight,child: Image.asset(map.maps_image)),

          ],
        ),
  );
}
