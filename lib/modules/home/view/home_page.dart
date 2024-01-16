import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/helper/download_file.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';
import 'package:my_portfolio/modules/about_me/about_me.dart';
import 'package:my_portfolio/modules/educations/educations.dart';
import 'package:my_portfolio/modules/experience/experience.dart';
import 'package:my_portfolio/modules/home/view/fottor.dart';
import 'package:my_portfolio/modules/projects/projects.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ItemScrollController _scrollController = ItemScrollController();
  final itemListen = ItemPositionsListener.create();
  var currentIndex = 0;

  final List<String> navItem = [
    'HOME',
    'ABOUT ME',
    'EXPERIENCE',
    'PROJECTS',
    'Download Cv'
  ];

  final List<Widget> pages = [
    const AboutMePage(),
    const EducationsPage(),
    const ExperiencePage(),
    const ProjectsPage(),
    const Footer(),
  ];
  @override
  void initState() {
    super.initState();
    _listenToScrollChanges();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        backgroundColor: AppColor.backgroundColor2,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 70,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: designPadding),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  "Mohamed Abdelkhalek",
                  style: GoogleFonts.satisfy(color: AppColor.primaryColor),
                ),
                Text(
                  "Flutter Developer",
                  style: GoogleFonts.satisfy(
                      color: AppColor.secondaryColor, fontSize: 14),
                ),
              ],
            ),
          ),
          actions: constraints.maxWidth <= 600.0
              ? [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, bottom: 20),
                    child: PopupMenuButton<int>(
                      icon: const Icon(
                        Icons.menu,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          designRadius8,
                        ),
                      ),
                      onSelected: (value) {
                        if (value == 4) {
                          downloadFile(
                            'assets/Mohamed-Abdelkhalek-cv.pdf',
                          );
                        } else {
                          scrollToItem(value);
                        }
                      },
                      padding: EdgeInsets.zero,
                      tooltip: 'More options',
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                      itemBuilder: (context) => [
                        ...navItem.asMap().entries.map(
                              (e) => PopupMenuItem<int>(
                                value: e.key,
                                child: Text(
                                  e.value,
                                  style: TextStyle(
                                    color: currentIndex == e.key
                                        ? AppColor.primaryColor
                                        : AppColor.secondaryColor,
                                  ),
                                ),
                              ),
                            ),
                      ],
                    ),
                  ),
                ]
              : [
                  ...navItem.asMap().entries.map(
                        (e) => e.value == 'Download Cv'
                            ? const SizedBox.shrink()
                            : Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, bottom: 10),
                                child: TextButton(
                                  onPressed: () {
                                    scrollToItem(e.key);
                                  },
                                  child: Text(
                                    e.value,
                                    style: TextStyle(
                                        color: currentIndex == e.key
                                            ? AppColor.primaryColor
                                            : AppColor.secondaryColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                      ),
                  GestureDetector(
                    onTap: () {
                      downloadFile(
                        'assets/Mohamed-Abdelkhalek-cv.pdf',
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: designPadding),
                      margin:
                          const EdgeInsets.only(right: 20, bottom: 20, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF6C5DD3),
                            Color(0xFF292B56),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Download Cv",
                          style: TextStyle(
                            color: Colors
                                .white, // Text color on the gradient background
                          ),
                        ),
                      ),
                    ),
                  )
                ],
        ),
        body: ScrollablePositionedList.separated(
          shrinkWrap: true,
          minCacheExtent: double.maxFinite,
          padding: EdgeInsets.only(
              left: designPadding12,
              right: designPadding12,
              top: designPadding * 2),
          scrollDirection: Axis.vertical,
          itemScrollController: _scrollController,
          itemPositionsListener: itemListen,
          itemCount: pages.length,
          separatorBuilder: (context, index) => SizedBox(
            height: height * 0.1,
          ),
          itemBuilder: (context, index) => pages[index],
        ),
      ),
    );
  }

  Future scrollToItem(int index) async {
    _scrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 500),
    );
  }

  void _listenToScrollChanges() {
    itemListen.itemPositions.addListener(() {
      setState(() {
        currentIndex = itemListen.itemPositions.value
            .toList()
            .first
            .index; // Update the current index
      });
    });
  }
}
