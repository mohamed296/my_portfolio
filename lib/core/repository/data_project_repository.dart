import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:my_portfolio/core/data_source/json_helper.dart';
import 'package:my_portfolio/core/model/data_project_model.dart';

class DataProjectRepository {
  final JsonHelper jsonHelper;

  DataProjectRepository({required this.jsonHelper});

  Future<DataProject?> getDataProjectProject() async {
    try {
      final ref = await FirebaseDatabase.instance.ref().get();
      final DataProject dataProject =
          DataProject.fromJson(ref.value as Map<String, dynamic>);
      return dataProject;
    } catch (e) {
      log(e.toString(), name: 'error');
    }
    return null;
  }
}
