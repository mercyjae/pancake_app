import 'package:flutter/material.dart';

class GetFood extends StatelessWidget {
  const GetFood({Key? key, required this.image}) : super(key: key);
 final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 100,
        width: 125,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
