// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModelCstom {
  final String? blogData;
  final String? coverImage;
  final String? heading;
  final String? summery;


  UserModelCstom(
      {this.blogData,
        this.coverImage,
        this.heading,
        this.summery,
 });

  UserModelCstom copyWith({
    String? blogData,
    String? coverImage,
    String? heading,
    String? summery,
  }) {
    return UserModelCstom(
      blogData: blogData ?? this.blogData,
      coverImage: coverImage ?? this.coverImage,
      heading: heading ?? this.heading,
      summery: summery ?? this.summery,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blogData': blogData,
      'coverImage': coverImage,
      'heading': heading,
      'summery': summery,
    };
  }

  factory UserModelCstom.fromMap(Map<String, dynamic> map) {
    return UserModelCstom(
      blogData: map['blogData'] != null ? map['blogData'] as String : null,
      coverImage:
      map['coverImage'] != null ? map['coverImage'] as String : null,
      heading: map['heading'] != null ? map['heading'] as String : null,
      summery: map['summery'] != null ? map['summery'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModelCstom.fromJson(String source) =>
      UserModelCstom.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModelCstom(blogData: $blogData, coverImage: $coverImage, heading: $heading, summery: $summery)';
  }

  @override
  bool operator ==(covariant UserModelCstom other) {
    if (identical(this, other)) return true;

    return other.blogData == blogData &&
        other.coverImage == coverImage &&
        other.heading == heading &&
        other.summery == summery;
  }

  @override
  int get hashCode {
    return blogData.hashCode ^
    coverImage.hashCode ^
    heading.hashCode ^
    summery.hashCode;
  }
}
