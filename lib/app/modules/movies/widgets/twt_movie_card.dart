import 'package:flutter/material.dart';

class TwtMovieCard extends StatelessWidget {
  const TwtMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 148,
      height: 280,
      child: Column(
        children: [
          Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                'https://p2.trrsf.com/image/fget/cf/1200/1600/middle/images.terra.com/2023/03/07/1028489282-joker-1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'The Jocker',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          const Text(
            '2019',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),

        ],
      ),
    );
  }
}
