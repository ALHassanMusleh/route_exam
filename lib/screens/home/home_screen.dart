import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:route_exam/provider/tab_bar_provider.dart';
import 'package:route_exam/screens/home/tabs/tabs_list/tabs_list.dart';
import 'package:route_exam/utils/app_assets.dart';
import 'package:route_exam/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TabBarProvider(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Image.asset(AppAssets.logo),
                  Text(
                    'VALORANT',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "primaryFont",
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: [Color(0xffFD4556), Color(0xff80071F)],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 250.0, 60.0)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 8, child: TabsList()),
          ],
        ),
      ),
    );
  }
}
