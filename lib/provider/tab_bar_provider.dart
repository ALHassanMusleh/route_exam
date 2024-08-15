import 'package:flutter/material.dart';
import 'package:route_exam/model/agents_md.dart';
import 'package:route_exam/model/maps_md.dart';
import 'package:route_exam/model/weapons_md.dart';
import 'package:route_exam/screens/home/tabs/agents_tab/agents_tab.dart';
import 'package:route_exam/screens/home/tabs/maps_tab/maps_tab.dart';
import 'package:route_exam/screens/home/tabs/weapons_tab/weapons_tab.dart';

class TabBarProvider extends ChangeNotifier{

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

  void changeTabBar(int index){
    selectedTabIndex = index;
    print(selectedTabIndex);
    notifyListeners();
  }
}