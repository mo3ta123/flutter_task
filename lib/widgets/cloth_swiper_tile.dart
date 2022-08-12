import 'package:flutter/material.dart';
import '/widgets/rating_widget.dart';
import '/widgets/favourite_widget.dart';

class ClothSwiperTile extends StatelessWidget {
  const ClothSwiperTile(
      {Key? key,
      required this.rating,
      required this.companey,
      required this.title,
      required this.price,
      required this.isDiscount,
      required this.chipText,
      required this.imageUrl})
      : super(key: key);
  final double rating;
  final String companey;
  final String title;
  final int price;
  final String chipText;
  final bool isDiscount;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: SizedBox(
        width: 150,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Rating(rating: rating),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  companey,
                  style: const TextStyle(
                    fontFamily: 'Metropolis',
                    color: Color(0xFFABB4BD),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Metropolis',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  '$price\$',
                  style: const TextStyle(
                    fontFamily: 'Metropolis',
                    color: Color(0xFFABB4BD),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const Positioned(
              top: 164 + 18,
              right: 0,
              child: FavouriteButton(),
            ),
            Positioned(
              top: 8,
              left: 9,
              child: Container(
                width: 40,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(29.0),
                  ),
                  color: isDiscount
                      ? const Color(0xFFFF3E3E)
                      : const Color(0xFF1E1F28),
                ),
                child: Center(
                  child: Text(
                    chipText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
