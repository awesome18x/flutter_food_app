import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class DetailFoodPage extends StatelessWidget {
  Food food;
  DetailFoodPage({this.food});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Food'),
      ),
      body: Column(

        children: <Widget>[

          Center(
            child: FadeInImage.assetNetwork(placeholder: 'assets/images/loading.gif', image: food.urlName),

          ),
          Text('Ingredients'),
          Expanded(
            child: ListView.builder(
              itemCount: this.food.ingredients.length,
              itemBuilder: (context, index) {
                String ingredient = this.food.ingredients[index];
                return ListTile(
                  leading: Text('${index +1}'),
                  title: Text(ingredient, style: TextStyle(
                    fontSize: 20
                  ))
                );
              }),
          )
        ],
      )
    );
  }
}
