import 'package:carousel_slider/carousel_slider.dart';
import 'package:design_one/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RateUsScreen extends StatefulWidget {
  const RateUsScreen({super.key});

  @override
  State<RateUsScreen> createState() => _RateUsScreenState();
}

class _RateUsScreenState extends State<RateUsScreen> {
  final animatedFaces = [
    "https://raw.githubusercontent.com/Tarikul-Islam-Anik/Telegram-Animated-Emojis/main/Smileys/Frowning%20Face%20With%20Open%20Mouth.webp",
    "https://raw.githubusercontent.com/Tarikul-Islam-Anik/Telegram-Animated-Emojis/main/Smileys/Pleading%20Face.webp",
    "https://raw.githubusercontent.com/Tarikul-Islam-Anik/Telegram-Animated-Emojis/main/Smileys/Smiling%20Face%20With%20Smiling%20Eyes.webp",
    "https://raw.githubusercontent.com/Tarikul-Islam-Anik/Telegram-Animated-Emojis/main/Smileys/Beaming%20Face%20With%20Smiling%20Eyes.webp",
    "https://raw.githubusercontent.com/Tarikul-Islam-Anik/Telegram-Animated-Emojis/main/Smileys/Smiling%20Face%20With%20Hearts.webp"
  ];

  CarouselController buttonCarouselController = CarouselController();
  int currentPage = 2;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          "Rate us",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Icon(PhosphorIcons.shootingStar()),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(24),
              const Text(
                "Tell us what you feel !",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Palette.greyDarkColor),
              ),
              const Gap(16),
              RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: "How was your Experience\nwith",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                            text: "AVEX",
                            style: TextStyle(color: Palette.blueColor))
                      ])),
              CarouselSlider(
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.33,
                  enlargeFactor: 0.44,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentPage = index;
                      });
                    }
                ),
                items: [0,1,2,3,4]
                    .map((i) => SizedBox(
                          width: 150,
                          height: 150,
                          child: Container(
                              child: Opacity(
                            opacity: i == currentPage ? 1 : 0.4,
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.contain,
                              image: NetworkImage(animatedFaces[i]),
                            ),
                          )),
                        ))
                    .toList(),
              ),
              RatingBar.builder(
                initialRating: (currentPage + 1).toDouble(),
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  PhosphorIconsFill.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  buttonCarouselController.animateToPage(rating.toInt() - 1);
                  setState(() {
                    currentPage = rating.toInt() - 1;
                  });
                },
              ),
              const Gap(32),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                        text: "Comments",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                              text: " (Optional)",
                              style: TextStyle(color: Palette.greyColor))
                        ])),
              ),
              const Gap(4),
              SizedBox(
                width: double.infinity,
                height: 300,
                child: TextField(
                  cursorColor: Palette.greyDarkColor,
                  keyboardType: TextInputType.multiline,
                  maxLines: 8,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF4F4F6),
                    helperStyle: TextStyle(color: Palette.greyColor),
                    hintText: 'Give your feedback',
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      backgroundColor: Palette.blackColor),
                  onPressed: () {},
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Palette.whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
