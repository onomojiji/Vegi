// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget singleProduct() {
    return Container(
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
                'assets/plat_okok.jpeg',
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                Text(
                  "Okok Sucré",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  "500 Fcfa",
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
                              "Manioc",
                              style: TextStyle(fontSize: 15),
                            ),
                          )),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: Color(0xffd1ad17),
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
    );
  }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: Container(
          color: Color(0xffd1ad17),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 40,
                      child: CircleAvatar(
                        radius: 37,
                        backgroundColor: Colors.red,
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
                        Container(
                          height: 30,
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
      ),
      appBar: AppBar(
        title: Text(
          "Accueil",
          style: TextStyle(fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xffd4d181),
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
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shopping_basket,
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
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/okok.jpeg'),
                ),
              ),
              child: Row(children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 120, bottom: 10),
                            child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50)),
                              ),
                              child: Center(
                                child: Text(
                                  'Vegi',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "30% de réduction",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Sur tous les plats d'okok achetés aujourd'hui.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    )),
                Expanded(child: Container())
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 30,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xffd1ad17),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        'Mets Traditionnels',
                        style: TextStyle(color: Colors.white),
                      ))),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Tout voir',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 30,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xffd1ad17),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        'Mets Traditionnels',
                        style: TextStyle(color: Colors.white),
                      ))),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Tout voir',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
