import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';

class EducationsPage extends StatelessWidget {
  const EducationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "About Me",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: AppColor.primaryColor,
                ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 2,
            width: 50,
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            height: 20,
          ),
          AutoSizeText(
            "Allow me to share some supplementary\n details about myself",
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColor.secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.center,
            children: [
              ContentAboutMe(
                title: "Interests",
                description: '''
Passionate about mobile app innovation and tech trends, I explore advancements, contribute to open source projects, and prioritize user-friendly UI/UX design. Solving complex problems and coding challenges is both a hobby and motivation, driving my commitment to continuous learning. Actively testing apps, gathering user feedback, and mentoring others are integral to my goal of fostering growth in mobile app development.
            ''',
                showEducation: false,
              ),
              ContentAboutMe(
                title: "Education",
                description: '''
My educational background includes a bachelor's degree in computer science from New Cairo Academy, which provided a solid foundation in software engineering principles, programming languages, data structures, algorithms, and databases. 
        ''',
                showEducation: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ContentAboutMe extends StatelessWidget {
  const ContentAboutMe({
    super.key,
    required this.title,
    required this.description,
    required this.showEducation,
  });
  final String title;
  final String description;
  final bool showEducation;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height * 0.4,
      width: width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(image: AssetImage("assets/me.png")),
        border: Border.all(
          color: AppColor.primaryColor,
          width: 2,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
          child: Container(
            padding: EdgeInsets.all(designPadding24),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: AppColor.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (showEducation)
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    minVerticalPadding: 0,
                    title: AutoSizeText(
                      "Computer Science",
                      maxLines: 1,
                    ),
                    subtitle: AutoSizeText(
                      "New Cairo Academy\nGPA: 3.0/4.0",
                      maxLines: 2,
                    ),
                    trailing: AutoSizeText(
                      "October 2017 - 2021\nEnglish",
                      maxLines: 2,
                    ),
                  ),
                AutoSizeText(
                  description,
                  maxLines: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
