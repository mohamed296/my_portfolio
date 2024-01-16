import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_portfolio/modules/about_me/info_me_widget.dart';
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
          const InfoMeWidget(),
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
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
