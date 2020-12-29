import 'package:flutter/material.dart';

import 'models/category.dart';
import 'models/food.dart';


final FAKE_CATEGORIES = [
  new Category(id: 1, content: 'Japaneses Food', color: Colors.deepOrange),
  new Category(id: 2, content: 'Pizza', color: Colors.teal),
  new Category(id: 3, content: 'Hamberger', color: Colors.cyanAccent),
  new Category(id: 4, content: 'Japaneses Food', color: Colors.deepOrange),
  new Category(id: 5, content: 'Pho Bo Nam Dinh', color: Colors.pink.shade200),
];

final FAKE_FOODS = [
  Food(
    name: 'Tempura',
    urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
    duration: Duration(minutes: 20),
    complexity: Complexity.Medium,
    ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
    categoryId: 1
  ),
  Food(
      name: 'Tempura',
      urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
      categoryId: 4
  ),
  Food(
      name: 'Tempura',
      urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
      categoryId: 1
  ),
  Food(
      name: 'Tempura',
      urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
      categoryId: 5
  ),
  Food(
      name: 'Dan ong chanf',
      urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
      categoryId: 4
  ),
  Food(
      name: 'Nguyen ba kien',
      urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
      categoryId: 3
  ),
  Food(
      name: 'Tempura',
      urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
      categoryId: 2
  ),
  Food(
      name: 'muon mang',
      urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
      categoryId: 2
  ),
  Food(
      name: 'Hello from',
      urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
      categoryId: 5
  ),
  Food(
      name: 'Bakayo ko',
      urlName: 'https://media.congluan.vn/files/dieulinh/2020/09/15/ngoc-trinh-1-1627.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Musgrooms'],
      categoryId: 1
  ),
];
