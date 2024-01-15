import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_portfolio/modules/projects/model/project_model.dart';
import 'package:my_portfolio/modules/projects/repository/projects_repository.dart';

part 'projects_event.dart';
part 'projects_state.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc(this.projectsRepository) : super(const ProjectsState()) {
    on<GetProjectsEvent>((event, emit) async {
      final data = await projectsRepository.getListOfProject();

      emit(state.copyWith(
        projectList: data.projects,
        states: ProjectsStates.loaded,
      ));
    });
  }

  final ProjectsRepository projectsRepository;
}
