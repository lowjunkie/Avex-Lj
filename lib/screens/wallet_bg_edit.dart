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

class _WalletBgEditScreenState extends State<WalletBgEditScreen> {
  int currentColor = 3;
  double currentPosition = -100;

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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
                    child: SizedBox(
                      width: 75,
                      height: 6,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: SizedBox(
                      width: 60,
                      height: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F4F6),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(24),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Let’s Create your new Wallet 🥳",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Palette.blackColor),
                ),
              ),
              const Gap(16),
              Row(
                children: [
                  Icon(
                    PhosphorIcons.palette(),
                    color: Palette.blackColor,
                  ),
                  const Gap(4),
                  const Text(
                    "Select Background",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Palette.blackColor),
                  ),
                ],
              ),
              const Gap(12),
              const Text(
                "Choose the colour of your wallet, you can edit this anytime.",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Palette.greyDarkColor),
              ),
              const Gap(60),
              Wallet(currentColor: currentColor,),
              const Gap(60),

              Stack(
                  alignment: Alignment.center,
                  children: [
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
                              onTapDown: (details){
                                setState(() {
                                  if(0 <= currentColor){
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - (18)   ;

                                  }else{
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

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
                              onTapDown: (details){
                                setState(() {
                                  if(1 <= currentColor){
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

                                  }else{
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

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
                              onTapDown: (details){
                                print(details.localPosition.dx);
                                setState(() {
                                  if(2 <= currentColor){
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

                                  }else{
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

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
                              onTapDown: (details){
                                print(details.localPosition.dx);
                                setState(() {
                                  if(3 <= currentColor){
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

                                  }else{
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

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
                              onTapDown: (details){
                                setState(() {
                                  if(4 <= currentColor){
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

                                  }else{
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

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
                              onTapDown: (details){
                                setState(() {
                                  if(5 <= currentColor){
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

                                  }else{
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

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
                              onTapDown: (details){
                                setState(() {
                                  if(6 <= currentColor){
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

                                  }else{
                                    currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 18;

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
                      left: currentPosition == -100 ? MediaQuery.of(context).size.width/2 - 32:currentPosition,
                      child: SizedBox(
                        width: 32,
                        height: 32,
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(31),
                              border: Border.all(color: colors[currentColor], width: 2)
                          ),
                        ),
                      ),
                    )
                  ]),


              const Gap(60),


              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      backgroundColor: Palette.blackColor),
                  onPressed: () {},
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
        ));
  }
}