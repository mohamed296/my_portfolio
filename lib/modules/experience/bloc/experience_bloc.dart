import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_portfolio/core/model/data_project_model.dart';
import 'package:my_portfolio/core/repository/data_project_repository.dart';


part 'experience_event.dart';
part 'experience_state.dart';

class ExperienceBloc extends Bloc<ExperienceEvent, ExperienceState> {
  ExperienceBloc(this.dataProjectRepository) : super(const ExperienceState()) {
    on<GetExperienceEvent>((event, emit) async {
      final data = await dataProjectRepository.getDataProjectProject();

      emit(state.copyWith(
        experienceList: data!.data!.experiences,
        states: ExperienceStates.loaded,
      ));
    });
  }
  final DataProjectRepository dataProjectRepository;
}
