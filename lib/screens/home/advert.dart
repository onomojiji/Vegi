// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Advert extends StatelessWidget {
  const Advert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 120, bottom: 10),
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
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            )),
        Expanded(child: Container())
      ]),
    );
  }
}
