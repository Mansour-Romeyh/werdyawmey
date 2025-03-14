import 'package:flutter/material.dart';
import 'package:werd/screens/fav_secreen.dart';

class Customfavbutton extends StatelessWidget {
  const Customfavbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('المفضلة',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontFamily: 'Amiri')),
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FavSecreen();
              }));
            },
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 40,
            )),
      ],
    );
  }
}
