import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});
  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch ${Uri.parse(url)}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Wrap(
        runSpacing: 20,
        spacing: 20,
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          SizedBox(
            width: width * .5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  "HI, I'M MOHAMED!",
                  maxLines: 1,
                  style: TextStyle(
                      color: AppColor.secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                FittedBox(
                  child: Row(
                    children: [
                      AutoSizeText(
                        "FLUTTER",
                        maxLines: 1,
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      AutoSizeText(
                        " DEVELOPER",
                        maxLines: 1,
                        style: TextStyle(
                            color: AppColor.secondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: designPadding12,
                ),
                const Column(
                  children: [
                    AutoSizeText(
                      '''As a seasoned Flutter Developer, my expertise lies in crafting mobile applications that seamlessly run on both Android and iOS platforms, utilizing the power of Flutter, a versatile cross-platform framework. Over the course of my career, I've played a pivotal role in the development of diverse projects, including a social media app, a travel booking application, and an e-commerce platform.
            ''',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    AutoSizeText(
                      '''In addition to my role as a Flutter Developer, I've been actively engaged in freelancing since August 2021. During this time, I've had the privilege of delivering high-quality solutions to clients spanning various domains and industries. This experience has not only honed my technical skills but has also provided me with a broad perspective on addressing unique challenges across different sectors.
                            ''',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    AutoSizeText(
                      '''My commitment to excellence, coupled with a passion for staying at the forefront of technological advancements, ensures that the solutions I deliver are not only robust but also aligned with the evolving needs of the industry. I look forward to leveraging my skills and experience to contribute effectively to future projects and continue making a meaningful impact in the world of Flutter app development.''',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    // border: Border.all(color: AppColor.primaryColor, width: 2),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/me.png",
                      ),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      _launchUrl("https://github.com/mohamed296");
                    },
                    icon: const Icon(
                      LineAwesomeIcons.github,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _launchUrl(
                          "https://www.linkedin.com/in/mohamed-abdelkhaleq/");
                    },
                    icon: const Icon(
                      LineAwesomeIcons.linkedin,
                    ),
                  ),
                  // IconButton(
                  //     onPressed: () {
                  //       _launchUrl("https://pub.dev/my-packages");
                  //     },
                  //     icon: Image.asset(
                  //       "assets/dart.png",
                  //       width: 20,
                  //       height: 20,
                  //     )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
