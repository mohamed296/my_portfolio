import 'package:my_portfolio/core/data_source/json_helper.dart';
import 'package:my_portfolio/modules/projects/model/project_model.dart';

class ProjectsRepository {
  final JsonHelper jsonHelper;

  ProjectsRepository({required this.jsonHelper});

  Future<ProjectModel> getListOfProject() async {
    final String data = await jsonHelper.convertJsonFileToList(
        jsonFile: "assets/json/projects.json");
    final ProjectModel projectModel = projectModelFromMap(data);
    return projectModel;
  }
}
