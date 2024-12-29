import 'package:first_project_app/contanst.dart';
import 'package:first_project_app/models/products.dart';
import 'package:first_project_app/widgets/Home/details/details_screen.dart';
import 'package:first_project_app/widgets/Home/products_crad.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
        child: Column(
            children: [
              Expanded(child: Stack(
                  children: [
                    SizedBox(height: kDefaultPadding / 2),
                    Container(
                      margin: EdgeInsets.only(top: 70.0),
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) => ProductsCard(
                        itemIndex: index,
                        product: products[index],
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                          (context) => DetailsScreen(
                            product: products[index],
                          ),
                          ),
                          );
                        },
                      ),
                    ),
                  ],
              ),
              ),
            ],
        ),
    );
  }
}

