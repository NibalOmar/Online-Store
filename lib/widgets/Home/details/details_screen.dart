import 'package:first_project_app/contanst.dart';
import 'package:first_project_app/models/products.dart';
import 'package:flutter/material.dart';
import 'details_body.dart';
import 'package:first_project_app/widgets/Home/details/color_dot.dart';
import '../../../models/products.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

        AppBar detailsAppBar(BuildContext context) {
          return AppBar(
            backgroundColor: kBackgroundColor,
            elevation: 0,
            leading: IconButton(
              padding: EdgeInsets.only(right: kDefaultPadding),
              icon: Icon(Icons.arrow_back,
                color: kPrimaryColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('back',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodySmall,
            ),
          );
  }

}
