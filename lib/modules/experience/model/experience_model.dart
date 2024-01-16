import 'dart:convert';

ExperiencesModel experiencesModelFromMap(String str) =>
    ExperiencesModel.fromMap(json.decode(str));

class ExperiencesModel {
  final List<Experience>? experiences;

  ExperiencesModel({
    this.experiences,
  });

  factory ExperiencesModel.fromMap(Map<String, dynamic> json) =>
      ExperiencesModel(
        experiences: json["experiences"] == null
            ? []
            : List<Experience>.from(
                json["experiences"]!.map((x) => Experience.fromMap(x))),
      );
}

class Experience {
  final String? title;
  final String? work;
  final String? time;
  final String? des;

  Experience({
    this.title,
    this.work,
    this.time,
    this.des,
  });

  factory Experience.fromMap(Map<String, dynamic> json) => Experience(
        title: json["title"],
        work: json["work"],
        time: json["time"],
        des: json["des"],
      );
}
