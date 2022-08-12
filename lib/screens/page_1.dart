import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/rating_widget.dart';
import 'package:flutter_task/widgets/select_border.dart';
import '/widgets/cloth_swiper_tile.dart';
import '/widgets/favourite_widget.dart';
import '/widgets/border_options.dart';
import '/widgets/border_tile.dart';
import '/widgets/circular_button_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1F28),
        elevation: 0,
        leading: IconButton(
          iconSize: 40,
          splashRadius: 20,
          icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: IconButton(
              splashRadius: 20,
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
          ),
        ],
        title: const Center(
          child: Text(
            'Short dress',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: const Color(0xFF1E1F28),
          child: SizedBox(
            height: 112,
            child: Row(
              children: [
                const Spacer(),
                Container(
                  width: 160,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                  ),
                  child: const Center(
                    child: Text(
                      'AR     Try On',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const CircularButton(
                    text: 'ADD TO CART', width: 160, height: 36),
                const Spacer(),
              ],
            ),
          )),
      backgroundColor: const Color(0xFF1E1F28),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Image.network(
                    'https://honeywell.scene7.com/is/image/honeywell/hon-ab-webb-telescope-first-images:1-1-square?wid=1245&hei=1245&dpr=off',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Image.network(
                    'https://honeywell.scene7.com/is/image/honeywell/hon-ab-webb-telescope-first-images:1-1-square?wid=1245&hei=1245&dpr=off',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 413,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SelectBorderTile(
                    text: 'Size',
                    width: 138,
                    isError: true,
                  ),
                  Spacer(),
                  SelectBorderTile(
                    text: 'Black',
                    width: 138,
                    isError: false,
                  ),
                  Spacer(),
                  FavouriteButton(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: const [
                  Text(
                    'H&M',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$19.99',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Short black dress',
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.5,
                  fontFamily: 'Metropolis',
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFABB4BD),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Rating(rating: 10),
            ),
            const SizedBox(
              height: 18,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.5,
                  fontFamily: 'Metropolis',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF5F5F5),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BorderOptionsTile(
              text: 'Item Detail',
              top: true,
            ),
            const BorderOptionsTile(
              text: 'Shipping Info',
            ),
            const BorderOptionsTile(
              text: 'Support',
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: const [
                  Text(
                    'You can also like this',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '12 items',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFABB4BD),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ClothSwiperTile(
                      rating: 10,
                      companey: 'Dorothy Perkins',
                      title: 'Evening Dress',
                      price: 15,
                      isDiscount: true,
                      chipText: '-20%',
                      imageUrl:
                          'https://honeywell.scene7.com/is/image/honeywell/hon-ab-webb-telescope-first-images:1-1-square?wid=1245&hei=1245&dpr=off'),
                  ClothSwiperTile(
                      rating: 0,
                      companey: 'Dorothy Perkins',
                      title: 'Evening Dress',
                      price: 15,
                      isDiscount: false,
                      chipText: 'NEW',
                      imageUrl:
                          'https://honeywell.scene7.com/is/image/honeywell/hon-ab-webb-telescope-first-images:1-1-square?wid=1245&hei=1245&dpr=off'),
                  ClothSwiperTile(
                      rating: 0,
                      companey: 'Dorothy Perkins',
                      title: 'Evening Dress',
                      price: 15,
                      isDiscount: false,
                      chipText: 'NEW',
                      imageUrl:
                          'https://honeywell.scene7.com/is/image/honeywell/hon-ab-webb-telescope-first-images:1-1-square?wid=1245&hei=1245&dpr=off'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
