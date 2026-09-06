import 'package:flutter/material.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

class ProductCardStyle extends StatelessWidget {
  const ProductCardStyle({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.38,
      width: MediaQuery.of(context).size.width * 0.45,
      //! تكييف لون الـ Container مع الوضع الليلي
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 4), // changes position of shadow
          ),
        ],
      ),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              product.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '${product.price} EGP',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                //! temporary: for now, we will just show the heart icon without functionality
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, size: 20, color: Colors.black87),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
