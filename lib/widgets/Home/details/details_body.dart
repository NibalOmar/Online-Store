import 'package:first_project_app/contanst.dart';
import 'package:first_project_app/widgets/Home/details/product_image.dart';
import 'package:flutter/material.dart';
import 'package:first_project_app/widgets/Home/details/color_dot.dart';
import '../../../models/products.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key key, this.product}) : super(key: Key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Column(
        children: [
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 300.0,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                  children: [
                    Center(
                    child: ProductImage(
                      size: size,
                      image: product.image,
                    ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ColorDot(
                                fillColor: kTextLightColor,
                                  isSelected: true,
                              ),
                              ColorDot(
                                fillColor: Colors.blue,
                                isSelected: false,
                              ),
                              ColorDot(
                                fillColor: Colors.red,
                                isSelected: false,
                              ),
                            ],
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2 ),
                      child: Text(product.title,
                      style: Theme.of(context).textTheme.headlineMedium ),
                    ),
                    Text(
                      'Price: \$${product.price}',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                    ),
                    SizedBox(height: kDefaultPadding),
                  ],
              ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2 ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding),
            child: Text(
              product.description,
              style: TextStyle(color: Colors.white, fontSize: 19.0),
            ),
          ),
        ],
    );
  }
}
