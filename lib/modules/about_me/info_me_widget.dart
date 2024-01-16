import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';

class InfoMeWidget extends StatelessWidget {
  const InfoMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: constraints.maxWidth >= 600.0 ? width * .5 : null,
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
    );
  }
}
