import 'package:flutter/foundation.dart';
import 'package:portfolio/provider/themeProvider.dart';
import 'package:portfolio/widget/customBtn.dart';
import 'package:portfolio/widget/customTextHeading.dart';
import 'package:portfolio/provider/themeProvider.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/aboutMeMetaData.dart';
import 'package:portfolio/widget/communityIconBtn.dart';
import 'package:portfolio/widget/toolsTechWidget.dart';


class AboutMobile extends StatelessWidget {
  final _communityLogoHeight = [40.0, 50.0, 20.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
     // color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me :)"),
          Image.asset(
            'mob.jpg',
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          Text(
            "I'm Muhammad Hamza, a Flutter developer, Technical blog writer and UI designer.",
            style: TextStyle(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w400,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "I'm a Final Year Computer Science student enrolled in COMSATS University, Islamabad. I have been developing mobile apps for over 1.5 years now. I have worked in teams for various startups and helped them in launching their prototypes and got valuable learning experience. I'm an active Google Developer Student Clubs (DSC) lead and also CEO/Founder Flutter Islamabad, Pakistan.",
            style: TextStyle(
              fontSize: height * 0.018,
              color: Colors.grey[500],
              height: 1.5,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Technologies I have worked with:",
              style: TextStyle(
                  color: kPrimaryColor, fontSize: height * 0.015),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          Row(
            children: [
              for (int i = 4; i < 8; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeMetaData(
            key: Key("age"),
            data: "Name",
            information: "Siddhant Saraf",
            alignment: Alignment.centerLeft,
          ),
          const AboutMeMetaData(
            key: Key("residence"),
            data: "Email",
            information: "siddhantsaraf.91@gmail.com",
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedCustomBtn(
                      btnText: "Resume",
                      onPressed: () {
                        kIsWeb
                            ? html.window.open(
                                'https://drive.google.com/uc?export=view&id=1OOdcdGEN3thVvpZ4cl_MM0LT-GCMuLIE',
                                "pdf")
                            : launchURL(
                                'https://drive.google.com/uc?export=view&id=1OOdcdGEN3thVvpZ4cl_MM0LT-GCMuLIE');
                      }),
                ),
                Container(
                  width: width * 0.2,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < kCommunityLogo.length; i++)
                CommunityIconBtn(
                  icon: kCommunityLogo[i],
                  link: kCommunityLinks[i],
                  height: _communityLogoHeight[i],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
