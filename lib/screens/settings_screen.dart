import 'package:design_one/screens/rate_us_screen.dart';
import 'package:design_one/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: const Text("Settings", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Icon(PhosphorIcons.gear()),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
              children: [
                const Gap(16),
                Row(
                  children: [
                    Icon(PhosphorIcons.gear(),
                    color: Palette.greyColor,),
                    const Gap(8),
                    Text("General", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Palette.greyColor),)
                  ],
                ),
                const Divider(height: 28,color: Palette.dividerColor, thickness: 2,),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                  children: [
                    CircleAvatar(
                      minRadius: 24,
                      backgroundColor: Palette.purpleColor,
                      child: Icon(PhosphorIcons.butterfly(),
                      color: Colors.white,),
                    ),
                    const Gap(10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Appearance",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Gap(4),
                        Text(
                          "Theme, Logo, Currencies",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Palette.greyColor),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Icon(PhosphorIcons.caretRight(), color: Colors.black,)
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        minRadius: 24,
                        backgroundColor: Palette.purpleColor,
                        child: Icon(PhosphorIcons.butterfly(),
                          color: Colors.white,),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Appearance",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Gap(4),
                          Text(
                            "Theme, Logo, Currencies",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Palette.greyColor),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Icon(PhosphorIcons.caretRight(), color: Colors.black,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        minRadius: 24,
                        backgroundColor: Palette.purpleColor,
                        child: Icon(PhosphorIcons.butterfly(),
                          color: Colors.white,),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Appearance",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Gap(4),
                          Text(
                            "Theme, Logo, Currencies",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Palette.greyColor),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Icon(PhosphorIcons.caretRight(), color: Colors.black,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        minRadius: 24,
                        backgroundColor: Palette.purpleColor,
                        child: Icon(PhosphorIcons.butterfly(),
                          color: Colors.white,),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Appearance",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Gap(4),
                          Text(
                            "Theme, Logo, Currencies",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Palette.greyColor),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Icon(PhosphorIcons.caretRight(), color: Colors.black,)
                    ],
                  ),
                ),

                const Gap(16),
                Row(
                  children: [
                    Icon(PhosphorIcons.caretCircleDoubleDown(),
                      color: Palette.greyColor,),
                    const Gap(8),
                    Text("Recovery", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Palette.greyColor),)
                  ],
                ),
                const Divider(height: 28,color: Palette.dividerColor, thickness: 2,),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        minRadius: 24,
                        backgroundColor: Palette.purpleColor,
                        child: Icon(PhosphorIcons.butterfly(),
                          color: Colors.white,),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Appearance",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Gap(4),
                          Text(
                            "Theme, Logo, Currencies",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Palette.greyColor),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Icon(PhosphorIcons.caretRight(), color: Colors.black,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        minRadius: 24,
                        backgroundColor: Palette.purpleColor,
                        child: Icon(PhosphorIcons.butterfly(),
                          color: Colors.white,),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Appearance",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Gap(4),
                          Text(
                            "Theme, Logo, Currencies",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Palette.greyColor),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Icon(PhosphorIcons.caretRight(), color: Colors.black,)
                    ],
                  ),
                ),

                const Gap(16),
                Row(
                  children: [
                    Icon(PhosphorIcons.headset(),
                      color: Palette.greyColor,),
                    const Gap(8),
                    Text("Support", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Palette.greyColor),)
                  ],
                ),
                const Divider(height: 28,color: Palette.dividerColor, thickness: 2,),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        minRadius: 24,
                        backgroundColor: Palette.purpleColor,
                        child: Icon(PhosphorIcons.butterfly(),
                          color: Colors.white,),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Appearance",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Gap(4),
                          Text(
                            "Theme, Logo, Currencies",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Palette.greyColor),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Icon(PhosphorIcons.caretRight(), color: Colors.black,)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RateUsScreen()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          minRadius: 24,
                          backgroundColor: Palette.yellowColor,
                          child: Icon(PhosphorIcons.shootingStar(),
                            color: Colors.white,),
                        ),
                        const Gap(10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rate Us",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Gap(4),
                            Text(
                              "Share us what you feel",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Palette.greyColor),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Icon(PhosphorIcons.caretRight(), color: Colors.black,)
                      ],
                    ),
                  ),
                ),

                const Gap(16),
                Row(
                  children: [
                    Icon(PhosphorIcons.headset(),
                      color: Palette.greyColor,),
                    const Gap(8),
                    Text("Socials", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Palette.greyColor),)
                  ],
                ),
                const Divider(height: 28,color: Palette.dividerColor, thickness: 2,),

                const Gap(24),

                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Palette.lightRedColor
                  ),
                  onPressed: (){

                  }
                  ,
                  child: const Text("Delete Account", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Palette.redColor
                  ),),
                ),

                const Gap(16),
                TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      backgroundColor: Palette.blackColor
                  ),
                  onPressed: (){

                  }
                  ,
                  child: const Text("Logout", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Palette.whiteColor
                  ),),
                ),

                const Gap(60),


              ],
          ),
        ),
      ),
    );
  }
}
