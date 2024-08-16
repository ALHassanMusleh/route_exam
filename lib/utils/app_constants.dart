import 'package:flutter/material.dart';
import 'package:route_exam/model/agents_md.dart';
import 'package:route_exam/model/maps_md.dart';
import 'package:route_exam/model/weapons_md.dart';
import 'package:route_exam/utils/app_assets.dart';

abstract class AppConstants {
  static final List<AgentsModel> agents = [
    AgentsModel(
      image: AppAssets.agents_2,
      subImage: AppAssets.subAgents_1,
      icon: AppAssets.iconAgents_1,
      title: 'Skye',
      description:
          'Hailing from Australia, Skye and her band of beasts trailblaze the way through hostile territory. With her creations hampering the enemy, and her power to heal others, the team is strongest and safest by Skye\u0027s side.',
      colors: [
        Color(0xff94E789),
        Color(0xff314D48),
      ],
    ),
    AgentsModel(
      image: AppAssets.agents_1,
      subImage: AppAssets.subAgents_2,
      icon: AppAssets.iconAgents_3,
      title: 'Gekko',
      description:
          'Gekko the Angeleno leads a tight-knit crew of calamitous creatures. His buddies bound forward, scattering enemies out of the way, with Gekko chasing them down to regroup and go again.',
      colors: [
        Color(0xffC7F458),
        Color(0xff3A7233),
      ],
    ),
    AgentsModel(
      image: AppAssets.agents_3,
      subImage: AppAssets.subAgents_3,
      icon: AppAssets.iconAgents_1,
      title: 'Kayo',
      description:
          'KAY/O is a machine of war built for a single purpose: neutralizing radiants. His power to Suppress enemy abilities dismantles his opponents\u0027 capacity to fight back, securing him and his allies the ultimate edge.',
      colors: [
        Color(0xff4AFAFF),
        Color(0xff391A61),
      ],
    ),
    AgentsModel(
      image: AppAssets.agents_4,
      subImage: AppAssets.subAgents_4,
      icon: AppAssets.iconAgents_3,
      title: 'Viper',
      description:
          'The American Chemist, Viper deploys an array of poisonous chemical devices to control the battlefield and choke the enemy\u0027s vision. If the toxins don\u0027t kill her prey, her mindgames surely will.',
      colors: [
        Color(0xff89F476),
        Color(0xff493A7C),
      ],
    ),
  ];

  static final List<MapsModel> maps = [
    MapsModel(
      splahBg: AppAssets.splashMaps_1,
      maps_image: AppAssets.maps_1,
      title: 'Ascent',
      colors: [
        Color(0xffFD4556).withOpacity(.5),
        Color(0xffFD4556).withOpacity(0.0),
      ],
    ),
    MapsModel(
      splahBg: AppAssets.splashMaps_2,
      maps_image: AppAssets.maps_2,
      title: 'Split',
      colors: [
        Color(0xffFD4556).withOpacity(.5),
        Color(0xffFD4556).withOpacity(0.0),
      ],
    ),
    MapsModel(
      splahBg: AppAssets.splashMaps_3,
      maps_image: AppAssets.maps_3,
      title: 'Bind',
      colors: [
        Color(0xffFD4556).withOpacity(.5),
        Color(0xffFD4556).withOpacity(0.0),
      ],
    ),
    MapsModel(
      splahBg: AppAssets.splashMaps_4,
      maps_image: AppAssets.maps_2,
      title: 'Haven',
      colors: [
        Color(0xffFD4556).withOpacity(.5),
        Color(0xffFD4556).withOpacity(0.0),
      ],
    ),
  ];

  static final List<WeaponsModel> weapons = [
    WeaponsModel(
      image: AppAssets.weapons_0,
      title: 'Odin',
      subTitle: 'Heavy Weapons',
    ),
    WeaponsModel(
      image: AppAssets.weapons_1,
      title: 'Vandal',
      subTitle: 'Rifle Weapons',
    ),
    WeaponsModel(
      image: AppAssets.weapons_2,
      title: 'Ares',
      subTitle: 'Heavy Weapons',
    ),
    WeaponsModel(
      image: AppAssets.weapons_3,
      title: 'Bulldog',
      subTitle: 'Rifle Weapons',
    ),
    WeaponsModel(
      image: AppAssets.weapons_4,
      title: 'Phantom',
      subTitle: 'Rifle Weapons',
    ),
    WeaponsModel(
      image: AppAssets.weapons_5,
      title: 'Ares',
      subTitle: 'Heavy Weapons',
    ),
  ];
}
