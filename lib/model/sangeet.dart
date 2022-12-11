import 'dart:convert';
import 'package:flutter/foundation.dart';

class SangeetList {
  final List<Sangeet> sangeets;
  SangeetList({
    required this.sangeets,
  });

  SangeetList copyWith({
    List<Sangeet>? sangeets,
  }) {
    return SangeetList(
      sangeets: sangeets ?? this.sangeets,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sangeets': sangeets.map((x) => x.toMap()).toList(),
    };
  }

  factory SangeetList.fromMap(Map<String, dynamic> map) {
    return SangeetList(
      sangeets: List<Sangeet>.from(
        (map['sangeets'] as List<int>).map<Sangeet>(
          (x) => Sangeet.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory SangeetList.fromJson(String source) =>
      SangeetList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SangeetList(sangeets: $sangeets)';

  @override
  bool operator ==(covariant SangeetList other) {
    if (identical(this, other)) return true;

    return listEquals(other.sangeets, sangeets);
  }

  @override
  int get hashCode => sangeets.hashCode;
}

class Sangeet {
  final int id;
  final int order;
  final String name;
  final String tagline;
  final String color;
  final String desc;
  final String url;
  final String category;
  final String icon;
  final String image;
  final String lang;
  Sangeet({
    required this.id,
    required this.order,
    required this.name,
    required this.tagline,
    required this.color,
    required this.desc,
    required this.url,
    required this.category,
    required this.icon,
    required this.image,
    required this.lang,
  });

  Sangeet copyWith({
    int? id,
    int? order,
    String? name,
    String? tagline,
    String? color,
    String? desc,
    String? url,
    String? category,
    String? icon,
    String? image,
    String? lang,
  }) {
    return Sangeet(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      tagline: tagline ?? this.tagline,
      color: color ?? this.color,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      category: category ?? this.category,
      icon: icon ?? this.icon,
      image: image ?? this.image,
      lang: lang ?? this.lang,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'order': order,
      'name': name,
      'tagline': tagline,
      'color': color,
      'desc': desc,
      'url': url,
      'category': category,
      'icon': icon,
      'image': image,
      'lang': lang,
    };
  }

  factory Sangeet.fromMap(Map<String, dynamic> map) {
    return Sangeet(
      id: map['id'] as int,
      order: map['order'] as int,
      name: map['name'] as String,
      tagline: map['tagline'] as String,
      color: map['color'] as String,
      desc: map['desc'] as String,
      url: map['url'] as String,
      category: map['category'] as String,
      icon: map['icon'] as String,
      image: map['image'] as String,
      lang: map['lang'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Sangeet.fromJson(String source) =>
      Sangeet.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Sangeet(id: $id, order: $order, name: $name, tagline: $tagline, color: $color, desc: $desc, url: $url, category: $category, icon: $icon, image: $image, lang: $lang)';
  }

  @override
  bool operator ==(covariant Sangeet other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.order == order &&
        other.name == name &&
        other.tagline == tagline &&
        other.color == color &&
        other.desc == desc &&
        other.url == url &&
        other.category == category &&
        other.icon == icon &&
        other.image == image &&
        other.lang == lang;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        order.hashCode ^
        name.hashCode ^
        tagline.hashCode ^
        color.hashCode ^
        desc.hashCode ^
        url.hashCode ^
        category.hashCode ^
        icon.hashCode ^
        image.hashCode ^
        lang.hashCode;
  }
}
