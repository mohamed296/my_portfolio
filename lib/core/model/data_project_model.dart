// To parse this JSON data, do
//
//     final dataProject = dataProjectFromJson(jsonString);

import 'dart:convert';

DataProject dataProjectFromJson(String str) => DataProject.fromJson(json.decode(str));

String dataProjectToJson(DataProject data) => json.encode(data.toJson());

class DataProject {
    final Data? data;

    DataProject({
        this.data,
    });

    factory DataProject.fromJson(Map<String, dynamic> json) => DataProject(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
    };
}

class Data {
    final List<Experience>? experiences;
    final List<Project>? projects;

    Data({
        this.experiences,
        this.projects,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        experiences: json["experiences"] == null ? [] : List<Experience>.from(json["experiences"]!.map((x) => Experience.fromJson(x))),
        projects: json["projects"] == null ? [] : List<Project>.from(json["projects"]!.map((x) => Project.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "experiences": experiences == null ? [] : List<dynamic>.from(experiences!.map((x) => x.toJson())),
        "projects": projects == null ? [] : List<dynamic>.from(projects!.map((x) => x.toJson())),
    };
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

    factory Experience.fromJson(Map<String, dynamic> json) => Experience(
        title: json["title"],
        work: json["work"],
        time: json["time"],
        des: json["des"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "work": work,
        "time": time,
        "des": des,
    };
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

    factory Project.fromJson(Map<String, dynamic> json) => Project(
        images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
        color: json["color"],
        title: json["title"],
        des: json["des"],
        gLink: json["gLink"],
        aLink: json["aLink"],
    );

    Map<String, dynamic> toJson() => {
        "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "color": color,
        "title": title,
        "des": des,
        "gLink": gLink,
        "aLink": aLink,
    };
}
