import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';

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
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.maxWidth >= 600.0 ? width * 0.3 : null,
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
      ),
    );
  }
}
