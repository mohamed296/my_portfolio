part of 'experience_bloc.dart';

@immutable
class ExperienceState {
  final ExperienceStates states;
  final List<Experience> experienceList;

  const ExperienceState({
    this.states = ExperienceStates.loading,
    this.experienceList = const [],
  });

  ExperienceState copyWith({
    ExperienceStates? states,
    List<Experience>? experienceList,
  }) {
    return ExperienceState(
      experienceList: experienceList ?? this.experienceList,
      states: states ?? this.states,
    );
  }
}

enum ExperienceStates {
  loading,
  loaded,
}
