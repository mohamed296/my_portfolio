part of 'projects_bloc.dart';

@immutable
class ProjectsState {
  final ProjectsStates states;
  final List<Project> projectList;

  const ProjectsState({
    this.states = ProjectsStates.loading,
    this.projectList = const [],
  });

  ProjectsState copyWith({
    ProjectsStates? states,
    List<Project>? projectList,
  }) {
    return ProjectsState(
      projectList: projectList ?? this.projectList,
      states: states ?? this.states,
    );
  }
}

enum ProjectsStates {
  loading,
  loaded,
}
