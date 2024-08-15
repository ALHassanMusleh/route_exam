import 'package:flutter/material.dart';
import 'package:route_exam/model/agents_md.dart';
import 'package:route_exam/model/maps_md.dart';
import 'package:route_exam/model/weapons_md.dart';
import 'package:route_exam/screens/home/tabs/agents_tab/agents_tab.dart';
import 'package:route_exam/screens/home/tabs/maps_tab/maps_tab.dart';
import 'package:route_exam/screens/home/tabs/weapons_tab/weapons_tab.dart';
import 'package:route_exam/utils/app_colors.dart';

class TabsList extends StatefulWidget {
  const TabsList({super.key});

  @override
  State<TabsList> createState() => _TabsListState();
}

class _TabsListState extends State<TabsList> {
  final List<String> titleTabs = const [
    AgentsModel.agents,
    MapsModel.maps,
    WeaponsModel.weapons
  ];

  final List<Widget> tabView = [
    AgentsTab(),
    MapsTab(),
    WeaponsTab(),
  ];

  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = titleTabs
        .map((title) => mapTextToWidget(
            title, selectedTabIndex == titleTabs.indexOf(title), context))
        .toList();
    return DefaultTabController(
        length: titleTabs.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                selectedTabIndex = index;
                setState(() {});
              },
              tabs: tabs,
              indicatorColor: AppColors.transparent,
            ),
            Expanded(child: TabBarView(children: tabView)),
          ],
        ));
  }
}

Widget mapTextToWidget(String title, bool isSelected, context) => Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: isSelected ? AppColors.accentColor : AppColors.primaryColor,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.white,
          fontSize: 18,
          fontFamily: 'primaryFont',
        ),
      ),
    );
