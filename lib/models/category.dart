import 'package:flutter/material.dart';

class Category {
  final int id;
  final String content;
  final Color color;
  Category({
    @required this.id,
    @required this.content,
    this.color
  });

  factory Category.fromJson(Map<String, dynamic> item) {
    return Category(
      id: item['int'],
      content: item['thumbnailUrl'],
      color: item['color']
    );
  }
}
