// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:vegi/config/color.dart';

enum SinginCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  const ProductOverview({Key? key}) : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SinginCharacter _character = SinginCharacter.fill;

  Widget buttonNavigationBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
  }) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(15),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 25,
            color: iconColor,
          ),
          SizedBox(
            width: 10,
          ),
          Text(title, style: TextStyle(color: textColor, fontSize: 17)),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buttonNavigationBar(
              iconColor: Colors.white70,
              backgroundColor: Colors.grey,
              color: textColor,
              title: "Favoris",
              iconData: Icons.favorite_outline),
          buttonNavigationBar(
              iconColor: Colors.white70,
              backgroundColor: primaryColor,
              color: textColor,
              title: "Panier",
              iconData: Icons.shopping_bag_outlined),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Aperçu du repas",
          style: TextStyle(color: textColor),
        ),
      ),
      body: ListView(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "Okok sucré",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: SizedBox(
                            width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Manioc",
                                  style: TextStyle(color: textColor),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 15,
                                  color: textColor,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image(
                        image: AssetImage("assets/plat_okok.jpeg"),
                        fit: BoxFit.cover),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      child: Text(
                        "Options disponibles",
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              value: SinginCharacter.fill,
                              groupValue: _character,
                              onChanged: (value) {
                                setState(() {
                                  //_character = value;
                                });
                              },
                              activeColor: Colors.green[700],
                            )
                          ],
                        ),
                        Text("500 Fcfa"),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 15,
                                color: primaryColor,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Ajouter",
                                style: TextStyle(color: primaryColor),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Constitution du repas",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Vous recevrez votre repas constitué de :"),
                Text("""
                        Un tas de truc qui permettrons au client de vérifier l'authenticité du produit
                        à l'arrivé sa livraison...
                    """),
                SizedBox(height: 10),
                Text(
                  "À propos de ce repas",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Un tas de blabla raconté par quelqu'un qui aime beaucoup bavarer...",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
