import 'package:ecomerce/tabs/home_tab.dart';
import 'package:ecomerce/tabs/products_tab.dart';
import 'package:ecomerce/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context){
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        Scaffold(
            body: HomeTab(),
            drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
        ),

        Container(color: Colors.green,),
        Container(color: Colors.amberAccent,),

      ],
    );
  }
}