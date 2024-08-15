import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:route_exam/provider/tab_bar_provider.dart';
import 'package:route_exam/utils/app_colors.dart';

class TabsList extends StatefulWidget {
  const TabsList({super.key});

  @override
  State<TabsList> createState() => _TabsListState();
}

class _TabsListState extends State<TabsList> {
  late TabBarProvider tabBarProvider;

  @override
  Widget build(BuildContext context) {
    tabBarProvider = Provider.of(context);
    List<Widget> tabs = tabBarProvider.titleTabs
        .map((title) => mapTextToWidget(
            title,
            tabBarProvider.selectedTabIndex ==
                tabBarProvider.titleTabs.indexOf(title),
            context))
        .toList();
    return DefaultTabController(
        length: tabBarProvider.titleTabs.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                tabBarProvider.changeTabBar(index);
              },
              tabs: tabs,
              indicatorColor: AppColors.transparent,
            ),
            Expanded(child: TabBarView(children: tabBarProvider.tabView)),
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
