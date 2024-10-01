import 'package:corp3/pages/home_page.dart';
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
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  //https://raw.githubusercontent.com/Nargon2904/corp3/refs/heads/main/assets/images/kits.jpg
                  'https://raw.githubusercontent.com/Nargon2904/corp3/refs/heads/main/assets/images/${listing.img[0]}.jpg',
                  width: 320,
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        for (var l in listings) {
                          if (l == listing) {
                            listings.remove(l);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage()),
                            );
                          }
                        }
                      },
                      child: const Text(
                        'Удалить',
                        style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 100, 100, 100),
                        ),
                      ),
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