// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vegi/config/color.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({Key? key}) : super(key: key);

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: CircleAvatar(
                      radius: 37,
                      backgroundImage: AssetImage("assets/eru1.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Bienvenu(e) très cher(e)"),
                      SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        height: 30,
                        // ignore: deprecated_member_use
                        child: OutlineButton(
                            onPressed: () {},
                            child: Text("Connectez-vous"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(width: 2))),
                      )
                    ],
                  )
                ],
              ),
            ),
            listTile(icon: Icons.home_outlined, title: "Accueil"),
            listTile(icon: Icons.shopping_bag_outlined, title: "Panier"),
            listTile(icon: Icons.person_outline, title: "Mon compte"),
            listTile(
                icon: Icons.notifications_outlined, title: "Notifications"),
            listTile(icon: Icons.star_outline, title: "Evaluations & Avis"),
            listTile(icon: Icons.favorite_outline, title: "Mes favoris"),
            listTile(icon: Icons.edit_note, title: "Porter plainte"),
            listTile(icon: Icons.question_answer_outlined, title: "FAQs"),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contacter l'assistance",
                      style: TextStyle(
                        fontSize: 17,
                      ) //fontWeight: FontWeight.bold),
                      ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Telephone : "),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "+237 699563010",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Email : "),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "onomojj@gmail.com",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      children: [
                        Text(
                          "Version : 1.0.0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
