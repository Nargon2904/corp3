import 'package:flutter/material.dart';
import '../models/rec_list.dart';
import '../pages/record_page.dart';

class ItemList extends StatelessWidget {
  final Listing listing;
  const ItemList({super.key, required this.listing});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const LinearBorder(),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecordPage(listing: listing),
            ),
          );
        },
        child: Column(
          children: [
            Center(
              child: ClipRRect(
                //borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  //https://raw.githubusercontent.com/Nargon2904/corp3/refs/heads/main/assets/images/kits.jpg
                  'https://raw.githubusercontent.com/Nargon2904/corp3/refs/heads/main/assets/images/${listing.img[0]}.jpg',
                  width: 340,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listing.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
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