// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

class RedditModel {
    RedditModel({
        this.kind,
        this.data,
    });

    String? kind;
    WelcomeData? data;

    factory RedditModel.fromRawJson(String str) => RedditModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory RedditModel.fromJson(Map<String, dynamic> json) => RedditModel(
        kind: json['kind'],
        data: WelcomeData.fromJson(json['data']),
    );

    Map<String, dynamic> toJson() => {
        'kind': kind,
        'data': data!.toJson(),
    };
}

class WelcomeData {
    WelcomeData({
        this.dist,
        this.children,
    });

    int? dist;
    List<Child>? children;

    factory WelcomeData.fromRawJson(String str) => WelcomeData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory WelcomeData.fromJson(Map<String, dynamic> json) => WelcomeData(
        dist: json['dist'],
        children: List<Child>.from(json['children'].map((x) => Child.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        'dist': dist,
        'children': List<dynamic>.from(children!.map((x) => x.toJson())),
    };
}

class Child {
    Child({
        this.kind,
        this.data,
    });

    String? kind;
    ChildData? data;

    factory Child.fromRawJson(String str) => Child.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Child.fromJson(Map<String, dynamic> json) => Child(
        kind: json['kind'],
        data: ChildData.fromJson(json['data']),
    );

    Map<String, dynamic> toJson() => {
        'kind': kind,
        'data': data!.toJson(),
    };
}

class ChildData {
    ChildData({
        this.title,
        this.authorFullname,
        this.thumbnailHeight,
        this.thumbnailWidth,
        this.thumbnail,
    });

    String? title;
    String? authorFullname;
    int? thumbnailHeight;
    int? thumbnailWidth;
    String? thumbnail;

    factory ChildData.fromRawJson(String str) => ChildData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ChildData.fromJson(Map<String, dynamic> json) => ChildData(
        title: json['title'],
        authorFullname: json['author_fullname'],
        thumbnailHeight: json['thumbnail_height'],
        thumbnailWidth: json['thumbnail_width'],
        thumbnail: json['thumbnail'],
    );

    Map<String, dynamic> toJson() => {
        'title': title,
        'author_fullname': authorFullname,
        'thumbnail_height': thumbnailHeight,
        'thumbnail_width': thumbnailWidth,
        'thumbnail': thumbnail,
    };
}
