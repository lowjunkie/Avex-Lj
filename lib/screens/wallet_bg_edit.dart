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
  int i = 0;
  int currentColor = 0;
  double currentPosition = 0;

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
          const Wallet(),
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
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 16.5  + ((0 - currentColor).abs() * 1.5);

                          }else{
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 30 + ((0 - currentColor).abs() * 1.5);

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
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 16.5 + ((1 - currentColor).abs() * 1.5);

                          }else{
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 30 + ((1 - currentColor).abs() * 1.5);

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
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 16.5  + ((2 - currentColor).abs() * 1.5);

                          }else{
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 30 + ((2 - currentColor).abs() * 1.5);

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
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 16.5 + ((3 - currentColor).abs() * 1.5);

                          }else{
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 30 + ((3 - currentColor).abs() * 1.5);

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
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 16.5 + ((4 - currentColor).abs() * 1.5);

                          }else{
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 30 + ((4 - currentColor).abs() * 1.5);

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
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 16.5 + ((5 - currentColor).abs() * 1.5);

                          }else{
                            currentPosition = (details.globalPosition.dx - details.localPosition.dx) - 30 + ((5 - currentColor).abs() * 1.5);

                          }
                        });
                      },
                      child: ColorElement(
                        color: Palette.pinkColor,
                        i: 5,
                        currentColor: currentColor,
                      )),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: currentPosition,
              child: SizedBox(
                width: 30,
                height: 30,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.blueAccent, width: 1.5)
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
