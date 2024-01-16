import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/modules/educations/content_about_me_widget.dart';

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
