// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vegi/config/color.dart';

class SingleProduct extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productPrice;
  final String productComplement;
  final Function ontap;

  const SingleProduct(
      {Key? key,
      required this.productName,
      required this.productPrice,
      required this.ontap,
      required this.productImage,
      required this.productComplement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 230,
        width: 160,
        decoration: BoxDecoration(
            color: Color(0xffd9dad9),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Image.asset(
                  productImage,
                  fit: BoxFit.fill,
                )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  Text(
                    productName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    productPrice + " Fcfa",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 28.5,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Center(
                              child: Text(
                                productComplement,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style:
                                    TextStyle(fontSize: 15, color: textColor),
                              ),
                            )),
                            Center(
                              child: Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                                color: textColor,
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      )
    ]);
  }
}
