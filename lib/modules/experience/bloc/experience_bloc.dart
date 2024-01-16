import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_portfolio/modules/experience/model/experience_model.dart';
import 'package:my_portfolio/modules/experience/repository/experience_repository.dart';

part 'experience_event.dart';
part 'experience_state.dart';

class ExperienceBloc extends Bloc<ExperienceEvent, ExperienceState> {
  ExperienceBloc(this.experienceRepository) : super(const ExperienceState()) {
    on<GetExperienceEvent>((event, emit) async {
      final data = await experienceRepository.getListOfExperience();

      emit(state.copyWith(
        experienceList: data.experiences,
        states: ExperienceStates.loaded,
      ));
    });
  }
  final ExperienceRepository experienceRepository;
}
