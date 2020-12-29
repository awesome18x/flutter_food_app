import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/screens/food_page.dart';

class CategoriesItem extends StatelessWidget {
  Category category;
  CategoriesItem({this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;

    return InkWell(
      onTap: () {
        print('Hello form NguyenVan Duy ${this.category.content}' );
        // Navigator.of(context).push(
        //   MaterialPageRoute(builder: (context) => FoodPage(category: this.category))
        // );
        Navigator.pushNamed(context, FoodPage.routeName, arguments: {'category': this.category});
      },
      splashColor: Colors.deepPurple,
      child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                this.category.content,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight:FontWeight.bold,
                    color: Colors.white
                ),
              ),

            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [
                    _color.withOpacity(0.6),
                    _color
                  ]
              )
          ),
        )
    );

  }
}
