import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/dependency_injection/get_it.dart';
import 'package:my_portfolio/core/theme/theme.dart';
import 'package:my_portfolio/firebase_options.dart';
import 'package:my_portfolio/modules/experience/bloc/experience_bloc.dart';
import 'package:my_portfolio/modules/home/view/home_page.dart';
import 'package:my_portfolio/modules/projects/bloc/projects_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => gi<ProjectsBloc>()..add(GetProjectsEvent()),
        ),
        BlocProvider(
          create: (context) => gi<ExperienceBloc>()..add(GetExperienceEvent()),
        ),
      ],
      child: MaterialApp(
        title: 'Mohamed Abdelkhalek',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appTheme,
        home: const HomePage(),
      ),
    );
  }
}
