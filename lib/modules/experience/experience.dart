import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Experience",
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
            "Creating impactful experiences\nthrough design and innovation",
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
              ContentExperience(
                title: "InCode, Egypt",
                work: "Flutter Developer – Full-Time",
                time: "June 2022 – Present",
                des: '''
As a Lead Developer, I spearheaded mobile application development, emphasizing design patterns and agile methodologies. Collaborating with cross-functional teams, I facilitated successful API integrations and implemented CI/CD for efficient app delivery. Achieved a significant performance improvement, enhancing user satisfaction through strategic code optimizations. Notably, I spearheaded a pivotal project resulting in a substantial increase in app downloads. Additionally, I played an active role in mentoring junior developers, contributing to the development of a skilled and cohesive team.    ''',
              ),
              ContentExperience(
                title: "AbuDiyab-IT-Services, Saudi Arabia",
                work: "Flutter Developer – Full-Time",
                time: "October 2021 - October 2022",
                des: '''
During my tenure at AbuDiyab-IT-Services Company, I played a pivotal role in developing a comprehensive application for car rentals in Saudi Arabia. Additionally, I took charge of creating a program to monitor car maintenance conditions, ensuring optimal vehicle performance and longevity. Furthermore, I designed and implemented a program to record employee attendance, contributing to streamlined workforce management.
    ''',
              ),
              ContentExperience(
                title: "Vicevio, India",
                work: "Flutter Developer – Remote",
                time: "June 2020 - September 2020",
                des: '''
During my tenure at Vicevio Co, I made significant contributions to the development and enhancement of the Vicevio program, specializing in social media. Through my work, I demonstrated a strong commitment to improving the program's functionality and performance. I played a key role in developing new tools, as well as modifying existing code to optimize the overall user experience.   ''',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ContentExperience extends StatelessWidget {
  const ContentExperience({
    super.key,
    required this.title,
    required this.work,
    required this.time,
    required this.des,
  });
  final String title;
  final String work;
  final String time;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.3,
      constraints: BoxConstraints(minHeight: height * 0.3),
      padding: EdgeInsets.all(designPadding12),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 2,
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.keyboard_double_arrow_right_outlined,
                color: AppColor.primaryColor,
              ),
              Expanded(
                child: AutoSizeText(
                  title,
                  maxLines: 1,
                  presetFontSizes: const [20, 18, 14],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(work),
          Text(time),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            // height: MediaQuery.of(context).size.height * 0.2,
            child: AutoSizeText(
              des,
              group: AutoSizeGroup(),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
