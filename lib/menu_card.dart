import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {

  const MenuCard({Key? key,required this.image, required this.title, required this.type, required this.rating,
  required this.views, required this.likes}) : super(key: key);
  final String image;
  final String title;
  final String type;
  final int rating;
  final double views;
  final double likes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Material(
        borderRadius: BorderRadius.circular(7),
        elevation: 4.0,
        child: Container(
          height: 125,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image)),
                    borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    type,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      getStar(rating, 1),
                      getStar(rating, 2),
                      getStar(rating, 3),
                      getStar(rating, 4),
                      getStar(rating, 5),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye_sharp,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(views.toString()),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(likes.toString()),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getStar(rating, index) {
    if (rating >= index) {
      return Icon(
        Icons.star,
        color: Colors.yellow);
    } else
      return Icon(
        Icons.star,
        color: Colors.grey,
      );
  }
}
