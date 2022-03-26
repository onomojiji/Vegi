// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vegi/screens/home/single_product.dart';
import 'package:vegi/layouts/drawer_side.dart';
import 'package:vegi/config/color.dart';
import 'package:vegi/screens/home/advert.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget _buildMetsTraditionnel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mets Traditionnels',
                style: TextStyle(
                  color: textColor,
                ),
              ),
              Text(
                'Tout voir',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              SingleProduct(
                productName: "Okok sucré",
                productPrice: "1750",
                ontap: () {
                  /* Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => ProductOverview()))); */
                },
                productImage: 'assets/plat_okok.jpeg',
                productComplement: "Manioc",
              ),
              SingleProduct(
                productName: "Eru",
                productPrice: "1150",
                ontap: () {},
                productImage: 'assets/eru3.jpg',
                productComplement: "Peau",
              ),
              SingleProduct(
                  productName: "koki",
                  productPrice: "1000",
                  ontap: () {},
                  productImage: 'assets/koki.png',
                  productComplement: "Banane"),
              SingleProduct(
                productName: "Ndolè auxcrevettes",
                productPrice: "1500",
                ontap: () {},
                productImage: 'assets/ndole-aux-crevettes.jpg',
                productComplement: "Miondo",
              ),
              SingleProduct(
                productName: "Taro sauce jaune",
                productPrice: "1500",
                ontap: () {},
                productImage: 'assets/taro1.jpg',
                productComplement: "Viande",
              ),
              SingleProduct(
                productName: "Zom sauté",
                productPrice: "1700",
                ontap: () {},
                productImage: 'assets/zomSaute.png',
                productComplement: "Plantain mûr",
              ),
              SingleProduct(
                productName: "Kondrè bami",
                productPrice: "950",
                ontap: () {},
                productImage: 'assets/kondre1.jpeg',
                productComplement: "Boeuf",
              ),
              SingleProduct(
                productName: "Kontchaf",
                productPrice: "700",
                ontap: () {},
                productImage: 'assets/kontchaf.jpg',
                productComplement: "Haricot rouge",
              ),
            ]))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroungColor,
      drawer: DrawerSide(),
      appBar: AppBar(
        title: Text(
          "Accueil",
          style: TextStyle(fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: primaryColor,
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: primaryColor,
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          children: [
            Advert(),
            _buildMetsTraditionnel(),
            _buildMetsTraditionnel(),
            Advert(),
            _buildMetsTraditionnel(),
          ],
        ),
      ),
    );
  }
}
