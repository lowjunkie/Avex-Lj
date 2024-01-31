import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:design_one/core/common/color_element.dart';
import 'package:design_one/core/common/wallet.dart';
import 'package:design_one/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class WalletBgEditScreen extends StatefulWidget {
  const WalletBgEditScreen({super.key});

  @override
  State<WalletBgEditScreen> createState() => _WalletBgEditScreenState();
}

class _WalletBgEditScreenState extends State<WalletBgEditScreen> with TickerProviderStateMixin {
  int currentColor = 3;
  double currentPosition = -100;
  late final AnimationController _controller;

  bool nextPage = false;
  bool isLoading = false;
  bool isCompleted = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);

    Timer.periodic(Duration(milliseconds: 1500), (Timer timer) async {
      if(isLoading && !isCompleted){
        cardKey.currentState?.controller?.animateTo(
          1,
          duration: Duration(milliseconds: 600),
          curve:Curves.linear,
        );
        await Future.delayed(const Duration(milliseconds: 1000));
        cardKey.currentState?.controller?.animateTo(
          0,
          duration: Duration(milliseconds: 200),
          curve:Curves.linear,
        );
      }else if(isCompleted){
        cardKey.currentState?.controller?.animateTo(
          0,
          duration: Duration(milliseconds: 600),
          curve:Curves.linear,
        );
      }
    });

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final colors = [
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




    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  nextPage = false;
                });
              },
              child: Icon(
                PhosphorIcons.caretLeft(),
                color: Colors.black,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 6),
                    child: SizedBox(
                      width: 60,
                      height: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: AnimatedSize(
                      duration: Duration(milliseconds: 300),
                      child: SizedBox(
                        width: nextPage || isLoading || isCompleted ? 60 : 75,
                        height: nextPage || isLoading || isCompleted ? 5 : 6,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: AnimatedSize(
                      duration: Duration(milliseconds: 300),
                      child: SizedBox(
                        width: nextPage || isLoading || isCompleted ? 75 : 60,
                        height: nextPage || isLoading || isCompleted ? 6 : 5,
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                              color:
                              nextPage || isLoading || isCompleted ? Colors.green : Color(0xFFF4F4F6),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(24),
               Align(
                alignment: Alignment.topLeft,
                child: Text(
                  isLoading ? "Creating...😇" : isCompleted ? "Created Wallet ✅" :"Let’s Create your new Wallet 🥳",
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Palette.blackColor),
                ),
              ),
              const Gap(16),


                  AnimatedSize(
                    duration: Duration(milliseconds: 500),
                    child: SizedBox(
                      height: isCompleted ? 0 : 60,
                      child: Row(
                        children: [
                          isLoading || isCompleted ? Container() :Icon(
                            PhosphorIcons.palette(),
                            color: Palette.blackColor,
                          ) ,
                          const Gap(4),
                           Text(
                            isLoading || isCompleted ? "" :"Select Background",
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Palette.blackColor),
                          ),
                        ],
                      ),
                    ),
                  ),

              const Gap(12),
               Text(
                isLoading || isCompleted ? "" :"Choose the colour of your wallet, you can edit this anytime.",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Palette.greyDarkColor),
              ),
              AnimatedSize(
                duration: Duration(milliseconds: 500),
                child: SizedBox(
                  height: isCompleted ? 0 : 60,
                  child: Container(),
                ),
              ),
              GestureDetector(
                onTap: (){
                  if(!isLoading){
                    cardKey.currentState?.toggleCard();
                  }
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500), // Adjust the duration as needed
                      curve: Curves.easeInOut, // Adjust the curve as needed
                      transform: nextPage
                          ? Matrix4.translationValues(
                          MediaQuery.of(context).size.width * 0.4, 0, 0.0)
                          : Matrix4.identity(),
                      child: Container(
                        child: Wallet(
                          currentColor: currentColor,
                          nextPage: nextPage,
                          isLoading: isLoading,
                          isCompleted: isCompleted,
                        ),
                      ),
                    ),

                    AnimatedSize(
                      duration: Duration(milliseconds: 1000),
                      child: Lottie.asset(
                        'assets/confetti.json',
                        height: isCompleted ? 210 :210,
                        fit: BoxFit.fitHeight,
                        width: double.infinity,
                        controller: _controller,
                        onLoaded: (composition) {
                          // Configure the AnimationController with the duration of the
                          // Lottie file and start the animation.
                          _controller
                            ..duration = composition.duration;
                        },
                      ),
                    ),

                  ],
                ),
              ),

              const Gap(36),
              isLoading ?
              const Text(
                "Hold on! your personalised wallet\nis being created.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Palette.greyDarkColor),
              ) : Text(""),
              isCompleted ? RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: "This wallet is added to",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Palette.greyDarkColor),
                      children: [
                        TextSpan(
                            text: " jas ",
                            style: TextStyle(
                                color: Palette.blueColor),),
                            TextSpan(
                                text: "profile",
                                style: TextStyle(
                                    color: Palette.blueColor))

                      ])) : Text(""),




              const Gap(0),
              !nextPage && !isLoading && !isCompleted
                  ? Stack(alignment: Alignment.center, children: [
                      SizedBox(
                        height: 60,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentColor = 0;
                                  });
                                },
                                onTapDown: (details) {
                                  setState(() {
                                    if (0 <= currentColor) {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              (18);
                                    } else {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    }
                                  });
                                },
                                child: ColorElement(
                                  color: Palette.blueColor,
                                  i: 0,
                                  currentColor: currentColor,
                                )),
                            Gap(16),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentColor = 1;
                                  });
                                },
                                onTapDown: (details) {
                                  setState(() {
                                    if (1 <= currentColor) {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    } else {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    }
                                  });
                                },
                                child: ColorElement(
                                  color: Palette.greenDarkColor,
                                  i: 1,
                                  currentColor: currentColor,
                                )),
                            Gap(16),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentColor = 2;
                                  });
                                },
                                onTapDown: (details) {
                                  print(details.localPosition.dx);
                                  setState(() {
                                    if (2 <= currentColor) {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    } else {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    }
                                  });
                                },
                                child: ColorElement(
                                  color: Palette.yellowColor,
                                  i: 2,
                                  currentColor: currentColor,
                                )),
                            Gap(16),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentColor = 3;
                                  });
                                },
                                onTapDown: (details) {
                                  print(details.localPosition.dx);
                                  setState(() {
                                    if (3 <= currentColor) {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    } else {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    }
                                  });
                                },
                                child: ColorElement(
                                  color: Palette.redColor,
                                  i: 3,
                                  currentColor: currentColor,
                                )),
                            Gap(16),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentColor = 4;
                                  });
                                },
                                onTapDown: (details) {
                                  setState(() {
                                    if (4 <= currentColor) {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    } else {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    }
                                  });
                                },
                                child: ColorElement(
                                  color: Palette.purpleColor,
                                  i: 4,
                                  currentColor: currentColor,
                                )),
                            Gap(16),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentColor = 5;
                                  });
                                },
                                onTapDown: (details) {
                                  setState(() {
                                    if (5 <= currentColor) {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    } else {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    }
                                  });
                                },
                                child: ColorElement(
                                  color: Palette.pinkColor,
                                  i: 5,
                                  currentColor: currentColor,
                                )),
                            Gap(16),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentColor = 6;
                                  });
                                },
                                onTapDown: (details) {
                                  setState(() {
                                    if (6 <= currentColor) {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    } else {
                                      currentPosition =
                                          (details.globalPosition.dx -
                                                  details.localPosition.dx) -
                                              18;
                                    }
                                  });
                                },
                                child: ColorElement(
                                  color: Palette.greyDarkColor,
                                  i: 6,
                                  currentColor: currentColor,
                                )),
                          ],
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 300),
                        left: currentPosition == -100
                            ? MediaQuery.of(context).size.width / 2 - 32
                            : currentPosition,
                        child: SizedBox(
                          width: 32,
                          height: 32,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(31),
                                border: Border.all(
                                    color: colors[currentColor], width: 2)),
                          ),
                        ),
                      )
                    ])
                  : const Gap(4),
              const SizedBox(
                height: 60,
              ),

              const Gap(0),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      backgroundColor: Palette.blackColor),
                  onPressed: () {
                    if(nextPage){
                      setState(() {
                        isLoading = true;
                        nextPage = false;
                      });
                    }else{
                      if(isLoading){
                        setState(() {
                          isLoading = false;
                          isCompleted = true;
                          Future.delayed(const Duration(seconds: 2)).whenComplete(() => [
                              _controller.forward()

                          ]
                          );

                        });
                      }else{
                        setState(() {
                          nextPage = true;
                        });
                      }

                    }

                  },
                  child: const Text(
                    "Confirm",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Palette.whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
