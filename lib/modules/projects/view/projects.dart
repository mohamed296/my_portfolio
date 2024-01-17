import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/modules/projects/bloc/projects_bloc.dart';
import 'package:my_portfolio/modules/projects/view/project_Item_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsBloc, ProjectsState>(
      builder: (context, state) {
        if (state.states == ProjectsStates.loading) {
          return const Center(
            child: SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator.adaptive()),
          );
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
                children: state.projectList
                    .map(
                      (e) => ProjectItem(
                        images: e.images,
                        color: int.parse(e.color.toString()),
                        title: e.title,
                        des: e.des,
                        gLink: e.gLink,
                        aLink: e.aLink,
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        );
      },
    );
  }
}
