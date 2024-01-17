import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_portfolio/core/model/data_project_model.dart';
import 'package:my_portfolio/core/repository/data_project_repository.dart';


part 'projects_event.dart';
part 'projects_state.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc(this.dataProjectRepository) : super(const ProjectsState()) {
    on<GetProjectsEvent>((event, emit) async {
      final data = await dataProjectRepository.getDataProjectProject();

      emit(state.copyWith(
        projectList: data!.data!.projects,
        states: ProjectsStates.loaded,
      ));
    });
  }

  final DataProjectRepository dataProjectRepository;
}
