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
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Padding(
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
                    borderRadius: BorderRadius.circular(10)
                  ),
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
                      borderRadius: BorderRadius.circular(10)
                  ),
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
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ),


            ],),
          const Gap(24),
          const Align(
            alignment: Alignment.topLeft,
            child: Text("Let’s Create your new Wallet 🥳",
              textAlign: TextAlign.start,
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Palette.blackColor
            ),
            ),
          ),
          const Gap(16),
          Row(
            children: [
              Icon(PhosphorIcons.palette(),
              color: Palette.blackColor,),
              const Gap(4),
              const Text("Select Background",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Palette.blackColor
                ),
              ),
            ],
          ),
          const Gap(12),
          const Text("Choose the colour of your wallet, you can edit this anytime.",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Palette.greyDarkColor
            ),
          ),
          const Gap(60),


          SizedBox(
            width: double.infinity,
            height: 200,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Business", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),),
                          const Gap(4),
                          Row(
                            children: [
                              Text("Wallet address", style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                              ),),
                              const Gap(4),
                              Icon(PhosphorIcons.copy(),
                              color: Colors.white,)
                            ],
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      Icon(PhosphorIcons.qrCode(),
                        color: Colors.white,
                      size: 28,)
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Total Balance",
                            style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Palette.whiteColor
                          ),),
                          const Gap(24),
                          Row(
                            children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 2.0),
                                    child: SizedBox(
                                      width: 9,
                                      height: 4,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Palette.whiteColor,
                                          borderRadius: BorderRadius.circular(4)
                                        ),
                                      ),
                                    ),
                                  ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: SizedBox(
                                  width: 9,
                                  height: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Palette.whiteColor,
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: SizedBox(
                                  width: 9,
                                  height: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Palette.whiteColor,
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: SizedBox(
                                  width: 9,
                                  height: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Palette.whiteColor,
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: SizedBox(
                                  width: 9,
                                  height: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Palette.whiteColor,
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: SizedBox(
                                  width: 9,
                                  height: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Palette.whiteColor,
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: SizedBox(
                                  width: 9,
                                  height: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Palette.whiteColor,
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: SizedBox(
                                  width: 9,
                                  height: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Palette.whiteColor,
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: SizedBox(
                                  width: 9,
                                  height: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Palette.whiteColor,
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      const Text("Profile", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Palette.whiteColor
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),


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
