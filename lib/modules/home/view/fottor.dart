import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';

/// footer
class Footer extends StatelessWidget {
  /// footer
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: EdgeInsets.all(designPadding),
        child: constraints.maxWidth >= 600.0
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '© 2024 Mohamed Abdelkhalek All Rights Reserved',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColor.secondaryColor,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  const Spacer(),
                  const FooterItem(title: 'Call', value: '+201024573438'),
                  SizedBox(
                    width: designPadding,
                  ),
                  const FooterItem(
                    title: 'Write',
                    value: 'mohamed.abdelkhalek931@gmail.com',
                  ),
                  SizedBox(
                    width: designPadding,
                  ),
                  SizedBox(
                    height: designPadding,
                  ),
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Call',
                            ),
                            SizedBox(
                              height: designPaddingCenter,
                            ),
                            const SelectableText(
                              '+201024573438\n',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                         
                            const Text(
                              'Write',
                            ),
                            SizedBox(
                              height: designPaddingCenter,
                            ),
                            const SelectableText(
                              'mohamed.abdelkhalek931@gmail.com',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: designPaddingCenter,
                  ),
                  const Text(
                    'Follow',
                  ),
                  SizedBox(
                    height: designPadding,
                  ),
                  const Text(
                    '© 2023 Mohamed Abdelkhalek All Rights Reserved',
                  ),
                ],
              ),
      ),
    );
  }
}

/// footer item
class FooterItem extends StatelessWidget {
  /// footer item
  const FooterItem({
    required this.title,
    required this.value,
    super.key,
  });

  /// footer item title
  final String title;

  /// footer item value
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
        ),
        SizedBox(
          height: designPaddingCenter,
        ),
        SelectableText(
          value,
        ),
      ],
    );
  }
}
