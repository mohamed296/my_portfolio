import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';

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
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        // height: height * 0.4,
        width: constraints.maxWidth >= 600.0 ? width * 0.3 : null,
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
      ),
    );
  }
}
