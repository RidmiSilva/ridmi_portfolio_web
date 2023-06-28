// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PostModelCstom {
  final String? postdata;
  final String? title;
  final String? mainImage;
  final String? paragarphs;

  PostModelCstom({
    this.postdata,
    this.title,
    this.mainImage,
    this.paragarphs
  });

  PostModelCstom copyWith({
    String? postdata,
    String? title,
    String? mainImage,
    String? paragarphs,
  }) {
    return PostModelCstom(
      postdata: postdata ?? this.postdata,
      title: title ?? this.title,
      mainImage: mainImage ?? this.mainImage,
      paragarphs: paragarphs ?? this.paragarphs,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postdata': postdata,
      'title': title,
      'mainImage': mainImage,
      'paragraphs': paragarphs
    };
  }

  factory PostModelCstom.fromMap(Map<String, dynamic> map) {
    return PostModelCstom(
      postdata: map['postdata'] != null ? map['postdata'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      mainImage: map['mainImage'] != null ? map['mainImage'] as String : null,
      paragarphs:map['paragarphs'] != null ? map['paragarphs'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModelCstom.fromJson(String source) =>
      PostModelCstom.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PostModelCstom( postdata: $postdata,title: $title, mainImage: $mainImage, paragraphs: $paragarphs)';
  }

  @override
  bool operator ==(covariant PostModelCstom other) {
    if (identical(this, other)) return true;

    return other.postdata == postdata && 
        other.title == title &&
        other.mainImage == mainImage &&
        other.paragarphs == paragarphs;
  }

  @override
  int get hashCode {
    return postdata.hashCode ^ title.hashCode ^ mainImage.hashCode ^ paragarphs.hashCode;
  }
}
