import 'package:my_portfolio/core/data_source/json_helper.dart';
import 'package:my_portfolio/modules/experience/model/experience_model.dart';

class ExperienceRepository {
  final JsonHelper jsonHelper;

  ExperienceRepository({required this.jsonHelper});

  Future<ExperiencesModel> getListOfExperience() async {
    final String data = await jsonHelper.convertJsonFileToList(
        jsonFile: "assets/json/experience.json");
    final ExperiencesModel experiencesModel = experiencesModelFromMap(data);
    return experiencesModel;
  }
}
