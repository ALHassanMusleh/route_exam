import 'package:flutter/material.dart';
import 'package:route_exam/model/maps_md.dart';
import 'package:route_exam/utils/app_constants.dart';
import 'package:route_exam/utils/app_styles.dart';

class MapsTab extends StatelessWidget {
  const MapsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: AppConstants.maps.length,
      itemBuilder: (context, index) =>
          BuildMapsItem(context, AppConstants.maps[index]),
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
    );
  }

  Widget BuildMapsItem(context, MapsModel map) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .27,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      map.splahBg,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Text(
                map.title,
                style: AppStyles.titleTextStyle,
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
            Align(
                alignment: Alignment.topRight,
                child: Image.asset(map.maps_image)),
          ],
        ),
      );
}
