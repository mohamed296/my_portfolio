import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_portfolio/core/dependency_injection/get_it.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';
import 'package:my_portfolio/modules/projects/bloc/projects_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsBloc, ProjectsState>(
      builder: (context, state) {
        if (state.states == ProjectsStates.loading) {
          return const CircularProgressIndicator();
        }
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
              Wrap(
                runSpacing: 20,
                spacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  ...state.projectList.map(
                    (e) => ProjectItem(
                      images: e.images,
                      color: int.parse(e.color.toString()),
                      title: e.title,
                      des: e.des,
                      gLink: e.gLink,
                      aLink: e.aLink,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
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
    required this.images,
  });

  final int? color;
  final String? title;
  final String? des;
  final String? gLink;
  final String? aLink;

  final List<String>? images;

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
        image: DecorationImage(image: AssetImage(images!.first)),
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
                  color: Color(color!),
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
                          items: images!
                              .map(
                                (e) => Image.asset(
                                  e,
                                  width: i == 0 ? 150 : null,
                                ),
                              )
                              .toList())),
                  Container(
                    height: height * 0.05,
                    color: Color(color!).withOpacity(0.8),
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
                      color: Color(color!),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            title!,
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
                              des!,
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
