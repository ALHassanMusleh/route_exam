import 'package:flutter/material.dart';
import 'package:route_exam/model/agents_md.dart';
import 'package:route_exam/screens/agents_details/agents_details.dart';

import 'package:route_exam/utils/app_constants.dart';
import 'package:route_exam/utils/app_styles.dart';

class AgentsTab extends StatelessWidget {
  const AgentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: AppConstants.agents.length,
        itemBuilder: (context, index) =>
            buildAgentsItem(context, AppConstants.agents[index]),
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
                  height: MediaQuery.of(context).size.height * .43,
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
                    bottom: 60, top: -90, child: Image.asset(agent.image)),
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
