import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/modules/experience/bloc/experience_bloc.dart';
import 'package:my_portfolio/modules/experience/view/content_experience_widget.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExperienceBloc, ExperienceState>(
      builder: (context, state) {
        if (state.states == ExperienceStates.loading) {
          return const SizedBox(
              width: 40, height: 40, child: CircularProgressIndicator());
        }
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
              Wrap(
                runSpacing: 20,
                spacing: 20,
                alignment: WrapAlignment.center,
                children: state.experienceList
                    .map(
                      (e) => ContentExperience(
                        title: e.title!,
                        work: e.work!,
                        time: e.time!,
                        des: e.des!,
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
