import 'package:flutter/material.dart';
import 'package:route_exam/model/agents_md.dart';
import 'package:route_exam/screens/agents_details/agents_details.dart';
import 'package:route_exam/utils/app_assets.dart';
import 'package:route_exam/utils/app_colors.dart';
import 'package:route_exam/utils/app_styles.dart';

class AgentsTab extends StatelessWidget {
  AgentsTab({super.key});

  final List<AgentsModel> agents = [
    AgentsModel(
      image: AppAssets.agents_2,
      subImage: AppAssets.subAgents_1,
      icon: AppAssets.iconAgents_1,
      title: 'Skye',
      description:
          'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
      colors: [
        Color(0xff94E789),
        Color(0xff314D48),
      ],
    ),
    AgentsModel(
      image: AppAssets.agents_1,
      subImage: AppAssets.subAgents_2,
      icon: AppAssets.iconAgents_2,
      title: 'Gekko',
      description:
          'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
      colors: [
        Color(0xffC7F458),
        Color(0xff3A7233),
      ],
    ),
    AgentsModel(
      image: AppAssets.agents_3,
      subImage: AppAssets.subAgents_3,
      icon: AppAssets.iconAgents_3,
      title: 'KAY/O',
      description:
          'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
      colors: [
        Color(0xff4AFAFF),
        Color(0xff391A61),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: agents.length,
        itemBuilder: (context, index) =>
            buildAgentsItem(context, agents[index]),
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
      ),
    );
  }

  Widget buildAgentsItem(BuildContext context, AgentsModel agent) =>
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, AgentsDetails.routeName,
              arguments: agent);
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 50),
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: MediaQuery.of(context).size.height * .47,
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //   image: AssetImage(AppAssets.agents_1),
                    // ),
                    // color: Colors.red,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: agent.colors,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(72),
                      topRight: Radius.circular(24),
                      bottomRight: Radius.circular(80),
                    ),
                  ),
                ),
                Positioned.fill(
                    bottom: 50, top: -100, child: Image.asset(agent.image)),
                Positioned(
                  left: 10,
                  child: Text(
                    agent.title,
                    style: AppStyles.titleTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
