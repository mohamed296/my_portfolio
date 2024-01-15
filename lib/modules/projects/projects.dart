import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Projects",
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
            "Here are some of my\n featured projects",
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
              ProjectItem(
                nameImage: "bund",
                extension: "png",
                count: 6,
                color: 0xff1C2C56,
                title: "Bünd",
                des:
                    "Designed and developed a secure and user-friendly finance banking app using Flutter and Dart, Implemented features for account management, fund transfers, bill payments, and transaction history",
                gLink:
                    "https://play.google.com/store/apps/details?id=com.bund.bund",
                aLink: "https://apps.apple.com/us/app/b%C3%BCnd/id6444239460",
              ),
              ProjectItem(
                nameImage: "abudiyab",
                extension: "webp",
                count: 5,
                color: 0xff505ac9,
                title: "ABUDIYAB",
                des:
                    "ABUDIYAB, a user-friendly car rental program in Saudi Arabia, simplifies the rental process. It ensures a seamless experience, making finding and renting the perfect vehicle easy for users. With a focus on convenience, ABUDIYAB streamlines the car rental journey for a hassle-free and efficient experience.",
                gLink:
                    "https://play.google.com/store/apps/details?id=com.abudiyab.abudiyab",
                aLink:
                    "https://apps.apple.com/us/app/%D8%A3%D8%A8%D9%88%D8%B0%D9%8A%D8%A7%D8%A8-%D9%84%D8%AA%D8%A3%D8%AC%D9%8A%D8%B1-%D8%A7%D9%84%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA/id1570665182",
              ),
              ProjectItem(
                nameImage: "4go",
                extension: "webp",
                count: 4,
                color: 0xfff5b416,
                title: "4GO",
                des:
                    "The 4GO app is an all-in-one solution for seamless vehicle rental, prioritizing user experience. It integrates online booking, vehicle tracking, insurance coverage, and electronic reporting, ensuring a comprehensive and safe rental experience with a strong focus on convenience.",
                gLink:
                    "https://play.google.com/store/apps/details?id=com.ad_automation.ad_automation",
                aLink: "https://apps.apple.com/us/app/4-go/id6443469663",
              ),
              ProjectItem(
                nameImage: "tsFinger",
                extension: "webp",
                count: 4,
                color: 0xff258488,
                title: "Ts Finger",
                des:
                    "Ts Finger, crafted for ABUDIYAB Company, revolutionizes attendance tracking using GPS. This app ensures precise and location-specific attendance records, streamlining the process. With efficient GPS-based tracking and insightful report generation, Ts Finger enhances workforce management.",
                gLink:
                    "https://play.google.com/store/apps/details?id=com.tsfinger.fingerprint",
                aLink: "https://apps.apple.com/us/app/adtsfinger/id6443908125s",
              ),
              ProjectItem(
                nameImage: "we",
                extension: "jpeg",
                count: 5,
                color: 0xFFac6c44,
                title: "We Gomla",
                des:
                    "We Gomla specializes in wholesale product sales, offering a dedicated platform for bulk procurement. Tailored for the wholesale market, it facilitates efficient transactions, streamlines inventory management, and meets diverse buyer needs.",
                gLink:
                    "https://play.google.com/store/apps/details?id=com.wareix.we",
              ),
              ProjectItem(
                nameImage: "vita",
                extension: "jpeg",
                count: 3,
                color: 0xFF621878,
                title: "Vita Prime",
                des:
                    "Vita Prime App: A medical store that provides high-quality health products. Order medicines and medical supplies with ease, with comprehensive information.",
                gLink:
                    "https://play.google.com/store/apps/details?id=com.vita.prime",
              ),
              ProjectItem(
                nameImage: "draya",
                extension: "jpeg",
                count: 5,
                color: 0xFF7BD545,
                title: "Deraya Sales",
                des:
                    "Deraya Sales, designed for Deraya Company, optimizes sales with features like customer follow-up, file uploads, and sales department management. The program aims to enhance operations, improve communication, and provide an efficient centralized platform for sales.",
              ),
              ProjectItem(
                nameImage: "lemon",
                extension: "jpeg",
                count: 5,
                color: 0xFFFFDE40,
                title: "Lemon Spaces",
                des:
                    "Lemon Spaces, a home rental program, simplifies finding and renting residences. With a user-friendly interface, comprehensive listings, and efficient booking, it caters to those seeking short-term accommodations for a comfortable stay.",
              ),
              ProjectItem(
                nameImage: "fazeker",
                extension: "jpeg",
                count: 7,
                color: 0xff258488,
                title: "Fazeker",
                des:
                    "Fazaker: Your all-in-one Islamic companion. Get accurate prayer times, explore the Quran, and find peace in Azkar and Duas. With a user-friendly interface, it's your guide to a seamless and enriched spiritual journey.",
              ),
              ProjectItem(
                nameImage: "asfarco",
                extension: "jpeg",
                count: 4,
                color: 0xFFE1561B,
                title: "Asfarco",
                des:
                    "Asfarco, a specialized car rental program in the UAE, ensures a seamless and efficient rental experience. Tailored for diverse needs, it offers features for convenient, flexible, and reliable vehicle rentals across various purposes.",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
    required this.color,
    required this.title,
    required this.des,
    this.gLink,
    this.aLink,
    required this.nameImage,
    required this.extension,
    required this.count,
  });

  final int color;
  final String title;
  final String des;
  final String? gLink;
  final String? aLink;
  final String nameImage;
  final String extension;
  final int count;

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch ${Uri.parse(url)}');
    }
  }

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Container(
      // height: height * 0.4,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage("assets/$nameImage/0.$extension")),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
          child: LayoutBuilder(
            builder: (context, constraints) => Container(
              height: height * 0.5,
              width: constraints.maxWidth >= 600.0 ? width * 0.2 : null,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Color(color),
                ),
              ),
              child: Column(
                children: [
                  Container(
                      height: height * 0.25,
                      width: constraints.maxWidth >= 600.0 ? width * 0.2 : null,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                      child: CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            scrollDirection: Axis.horizontal,
                            scrollPhysics: const NeverScrollableScrollPhysics(),
                            aspectRatio: 2.0,
                            enlargeCenterPage: false,
                          ),
                          items: [
                            for (i = 0; i <= count; i++)
                              Image.asset(
                                'assets/$nameImage/$i.$extension',
                                width: i == 0 ? 150 : null,
                              ),
                          ])),
                  Container(
                    height: height * 0.05,
                    color: Color(color).withOpacity(0.8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (gLink != null)
                          GestureDetector(
                            onTap: () {
                              _launchUrl(gLink!);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  LineAwesomeIcons.google_play,
                                  color: AppColor.backgroundColor,
                                ),
                                const Text(
                                  "Google Play",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        if (aLink != null)
                          GestureDetector(
                            onTap: () {
                              _launchUrl(aLink!);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  LineAwesomeIcons.app_store,
                                  color: AppColor.backgroundColor,
                                ),
                                const Text(
                                  "App Store",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        if (aLink == null && gLink == null)
                          Row(
                            children: [
                              Icon(
                                LineAwesomeIcons.exclamation_circle,
                                color: AppColor.backgroundColor,
                              ),
                              const Text(
                                "Private App",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Color(color),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: AppColor.backgroundColor,
                                ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: AutoSizeText(
                              des,
                              style: TextStyle(
                                color:
                                    AppColor.backgroundColor.withOpacity(0.6),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
