import 'package:flutter/material.dart';
import 'package:pancakes_app/get_food.dart';
import 'package:pancakes_app/menu_card.dart';

class FruitApp extends StatefulWidget {
  const FruitApp({Key? key}) : super(key: key);

  @override
  _FruitAppState createState() => _FruitAppState();
}

class _FruitAppState extends State<FruitApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [
      Stack(
            children: [
              Container(
                height: 350,
                width: double.infinity,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color:  Color(0xFFFA624F),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 120,
                left: 15,
                right: 15,
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Positioned(
                  top: 75,
                  left: 110,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        image:
                            DecorationImage(image: AssetImage("assets/images/Tatiana.jpg"),
                                fit: BoxFit.cover),
                      ))
              ),
              Positioned(top: 190,
                left: (MediaQuery.of(context).size.width/2)-105.0,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Chris Pratt",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "China",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                    FlatButton(
                      color: Color(0xFFFA624F),
                      shape:
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      child: Text(
                        "Message",
                        style: TextStyle(color: Colors.white),
                      )),
                      SizedBox(width: 5,),
                    FlatButton(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {},
                        child: Text(
                          "Following",
                          style: TextStyle(color: Colors.white),
                        ))

                  ],)
                ],),)
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),

      Column(
            children: [
              MenuCard(
                  image: "assets/images/pic 4.jpeg",
                  title: "Berry Banana Milkshake",
                  type: "Breakfast",
                  rating: 4,
                  views: 2.8,
                  likes: 1.2),
              SizedBox(
                height: 10,
              ),
              MenuCard(
                  image: "assets/images/pic 3.jpeg",
                  title: "Fruit pancake",
                  type: "Breakfast",
                  rating: 4,
                  views: 4.2,
                  likes: 2.8),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Works",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 5.0),
            child: Container(
              height: 125,
              child: ListView(scrollDirection: Axis.horizontal,children: [
                GetFood(image: "assets/images/pic 1.jpeg",),
                GetFood(image: "assets/images/pic 2.jpeg"),
                GetFood(image: "assets/images/pic 3.jpeg"),
              ],),
            ),
          ),
          
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bought",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
