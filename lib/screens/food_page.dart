import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/screens/detail_food_page.dart';

class FoodPage extends StatelessWidget {
  static const String routeName = '/FoodPage';
  Category category;
  FoodPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    List<Food> foods = FAKE_FOODS.where((food) => food.categoryId == this.category.id).toList();
    print(foods);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('This show Food ${this.category.content}'),
      ),
      body: Center(
        child: Center(
          child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (item, index) {
              Food food = foods[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailFoodPage(food: food))
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        clipBehavior: Clip.hardEdge,
                        child: FadeInImage.assetNetwork(
                          placeholder: 'assets/images/loading.gif',
                          image: food.urlName,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 30, left: 30,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white, width: 2)
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.timer, color: Colors.white, size: 25),
                              Text('${food.duration.inMinutes} minutes', style: TextStyle(fontSize: 22, color: Colors.white))
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              );
          })
        ),
      )
    );
  }
}
