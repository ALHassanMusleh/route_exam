import 'package:flutter/material.dart';
import 'package:route_exam/model/agents_md.dart';
import 'package:route_exam/utils/app_assets.dart';
import 'package:route_exam/utils/app_colors.dart';
import 'package:route_exam/utils/app_styles.dart';

class AgentsDetails extends StatelessWidget {
  AgentsDetails({super.key});

  static const String routeName = 'AgentsDetails';
  late AgentsModel agent;
  @override
  Widget build(BuildContext context) {
    agent = ModalRoute.of(context)!.settings.arguments as AgentsModel;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          agent.title,
          style: AppStyles.titleTextStyle,
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: ImageIcon(
              AssetImage(agent.icon),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * .6,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(agent.subImage),
                    Image.asset(
                      agent.image,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: AppStyles.subTitleTextStyle.copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    agent.description,
                    style: AppStyles.subTitleTextStyle.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ability',
                    style: AppStyles.subTitleTextStyle.copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.white,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          AppAssets.iconBottomNav_1,
                          width: 60,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.white,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          AppAssets.iconBottomNav_2,
                          width: 60,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.white,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          AppAssets.iconBottomNav_3,
                          width: 60,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.white,width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          AppAssets.iconBottomNav_4,
                          width: 60,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
