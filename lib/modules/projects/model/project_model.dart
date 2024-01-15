
import 'dart:convert';

ProjectModel projectModelFromMap(String str) => ProjectModel.fromMap(json.decode(str));

class ProjectModel {
  final List<Project>? projects;

  ProjectModel({
    this.projects,
  });

  factory ProjectModel.fromMap(Map<String, dynamic> json) => ProjectModel(
        projects: json["projects"] == null
            ? []
            : List<Project>.from(
                json["projects"]!.map((x) => Project.fromMap(x))),
      );
}

class Project {
  final List<String>? images;
  final String? color;
  final String? title;
  final String? des;
  final String? gLink;
  final String? aLink;

  Project({
    this.images,
    this.color,
    this.title,
    this.des,
    this.gLink,
    this.aLink,
  });

  factory Project.fromMap(Map<String, dynamic> json) => Project(
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        color: json["color"],
        title: json["title"],
        des: json["des"],
        gLink: json["gLink"],
        aLink: json["aLink"],
      );
}
