import 'dart:async';

import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:flip_card/flip_card.dart';

import '../../theme/palette.dart';

final cardKey = GlobalKey<FlipCardState>();


class Wallet extends StatelessWidget {
  final currentColor;
  final nextPage;
  final isLoading;
  final isCompleted;

    Wallet({super.key, this.currentColor, this.nextPage, this.isLoading, this.isCompleted});


   static List<Color> colors = [
    Palette.blueColor,
    Palette.greenDarkColor,
    Palette.yellowColor,
    Palette.redColor,
    Palette.purpleColor,
    Palette.pinkColor,
    Palette.greyDarkColor
  ];





  @override
  Widget build(BuildContext context) {

    //
    // Timer.periodic(Duration(milliseconds: 1500), (Timer timer) async {
    //   if(isLoading && !isCompleted){
    //     print("hi");
    //     _controller.controller?.animateTo(
    //       1,
    //       duration: Duration(milliseconds: 600),
    //       curve:Curves.linear,
    //     );
    //     await Future.delayed(const Duration(milliseconds: 1000));
    //     _controller.controller?.animateTo(
    //       0,
    //       duration: Duration(milliseconds: 200),
    //       curve:Curves.linear,
    //     );
    //   }else if(isCompleted){
    //     print("object");
    //     _controller.controller?.animateTo(
    //       1,
    //       duration: Duration(milliseconds: 600),
    //       curve:Curves.linear,
    //     );
    //   }
    // });


    return FlipCard(

      key: cardKey,
      direction: FlipDirection.HORIZONTAL,
      speed: 300,
      flipOnTouch: true,
      front:  Stack(
          children: [
            AnimatedScale(
              scale: nextPage ? 1.3 : 1,
              duration: Duration(milliseconds: 400),
              child: SizedBox(
                width: double.infinity,
                height: 210,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  padding:
                  const EdgeInsets.only(right: 20, top: 16, bottom: 16),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(28),
                      gradient:  LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          colors[currentColor],
                          Color(0xFF0051CF),
                        ],
                      ),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.16),
                            blurRadius: 20,
                            offset: Offset(2, 2))
                      ]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 90,
                            height: 70,
                            child: Stack(
                              children: [
                                const Positioned(
                                  right: 6,
                                  top: 0,
                                  child: SizedBox(
                                    width: 24,
                                    child: Image(
                                      image: AssetImage(
                                        "assets/images/stripe_doodle_right.png",
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 4,
                                  top: 6,
                                  child: SizedBox(
                                    width: 30,
                                    child: Image(
                                      image: AssetImage(
                                        "assets/images/stripe_doodle_left.png",
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: CircleAvatar(
                                    backgroundColor:
                                    Color.fromRGBO(255, 255, 255, 0.4),
                                    radius: 24,
                                    child: Icon(
                                      PhosphorIcons.user(),
                                      color: Color.fromRGBO(244, 244, 246, 0.7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Business",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              const Gap(2),
                              Row(
                                children: [
                                  const Text(
                                    "Wallet address",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  const Gap(4),
                                  Icon(
                                    PhosphorIcons.copy(),
                                    color: Colors.white,
                                  )
                                ],
                              )
                            ],
                          ),
                          Expanded(child: Container()),
                          Icon(
                            PhosphorIcons.qrCode(),
                            color: Colors.white,
                            size: 28,
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Total Balance",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Palette.whiteColor),
                                ),
                                const Gap(24),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 2.0),
                                      child: SizedBox(
                                        width: 9,
                                        height: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Palette.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 2.0),
                                      child: SizedBox(
                                        width: 9,
                                        height: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Palette.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 2.0),
                                      child: SizedBox(
                                        width: 9,
                                        height: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Palette.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 2.0),
                                      child: SizedBox(
                                        width: 9,
                                        height: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Palette.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 2.0),
                                      child: SizedBox(
                                        width: 9,
                                        height: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Palette.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 2.0),
                                      child: SizedBox(
                                        width: 9,
                                        height: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Palette.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 2.0),
                                      child: SizedBox(
                                        width: 9,
                                        height: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Palette.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 2.0),
                                      child: SizedBox(
                                        width: 9,
                                        height: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Palette.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 2.0),
                                      child: SizedBox(
                                        width: 9,
                                        height: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Palette.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Expanded(child: Container()),
                            const Gap(16),
                            const Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Palette.whiteColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              bottom: 0,
              right: 80,
              child: SizedBox(
                width: 100,
                child: Image(
                  image: AssetImage(
                    "assets/images/x_sprinkles.png",
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const Positioned(
              top: 6,
              right: 0,
              child: SizedBox(
                width: 40,
                child: Image(
                  image: AssetImage(
                    "assets/images/o_sprinkles.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),

      back: Stack(
        children: [
          AnimatedScale(
            scale: nextPage ? 1.3 : 1,
            duration: Duration(milliseconds: 400),
            child: SizedBox(
              width: double.infinity,
              height: 210,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding:
                const EdgeInsets.only(right: 20, top: 16, bottom: 16),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(28),
                    gradient:  LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        colors[currentColor],
                        Color(0xFF0051CF),
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                          blurRadius: 20,
                          offset: Offset(2, 2))
                    ]),
                child: Column(),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 100,
            child: SizedBox(
              width: 100,
              child: Image(
                image: AssetImage(
                  "assets/images/x_sprinkles.png",
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const Positioned(
            top: 90,
            left: 0,
            child: SizedBox(
              width: 40,
              child: Image(
                image: AssetImage(
                  "assets/images/o_sprinkles.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: 100,
              child: Image(
                image: AssetImage(
                  "assets/images/x_sprinkles.png",
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const Positioned(
            bottom: 90,
            right: 0,
            child: SizedBox(
              width: 100,
              child: Image(
                image: AssetImage(
                  "assets/images/x_sprinkles.png",
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          const Positioned(
            top: 30,
            left:40,
            child: Text(
                "AVEX",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Palette.greyColor
              ),
                ),
          )
        ],
      ),
    );

  }
}



