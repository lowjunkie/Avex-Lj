import 'package:design_one/core/common/token_item.dart';
import 'package:design_one/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../core/common/curve_painter.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  child:
                  Image(image: AssetImage("assets/images/aj_avatar.png")),
                ),
                const Gap(12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Aj_22",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Gap(5),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.black,
                          size: 26,
                        ),
                      ],
                    ),
                    Text(
                      "Business",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Icon(
                  PhosphorIcons.clock(),
                  color: Palette.greyDarkColor,
                  size: 26,
                ),
                const Gap(18),
                Icon(
                  PhosphorIcons.scan(),
                  color: Palette.greyDarkColor,
                  size: 26,
                ),
                const Gap(18),
                Icon(
                  PhosphorIcons.paperPlaneTilt(),
                  color: Palette.greyDarkColor,
                  size: 26,
                ),
              ],
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 150,
                    floating: false,
                    snap: false,
                    pinned: false,
                    flexibleSpace: SizedBox(
                        height: 150,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total balance",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Palette.greyColor),
                                  ),
                                  Gap(5),
                                  Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: Palette.greyColor,
                                    size: 26,
                                  ),
                                ],
                              ),
                              const Gap(14),
                              RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(
                                      text: "\$1,038",
                                      style: TextStyle(
                                          fontSize: 38,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                            text: ".56",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Palette.greyColor))
                                      ])),
                              const Gap(14),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 35,
                                    width: 90,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Palette.greenColor,
                                          borderRadius: BorderRadius.circular(33)),
                                      child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                PhosphorIcons.arrowUp(),
                                                color: Palette.greenDarkColor,
                                                size: 14,
                                              ),
                                              const Gap(4),
                                              Text(
                                                "18.73%",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Palette.greenDarkColor),
                                              )
                                            ],
                                          )),
                                    ),
                                  ),
                                  const Gap(8),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4.0),
                                    child: Icon(
                                      PhosphorIcons.copy(),
                                      color: Palette.greyMediumColor,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                  ),
                  SliverAppBar(
                    expandedHeight: 60,
                    scrolledUnderElevation: 0,
                    floating: false,
                    snap: false,
                    pinned: true,
                    flexibleSpace: SizedBox(
                      height: 60,
                      child:  Row(
                        children: [
                          const Text(
                            "Token",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          const Gap(14),
                          const Text(
                            "NFT",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Palette.greyColor),
                          ),
                          const Gap(14),
                          const Text(
                            "DeFi",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Palette.greyColor),
                          ),
                          const Gap(14),
                          const Text(
                            "VC",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Palette.greyColor),
                          ),
                          Expanded(child: Container()),
                          Icon(
                            PhosphorIcons.plus(),
                            color: Palette.greyColor,
                            size: 24,
                          ),
                          const Gap(16),
                          Icon(
                            PhosphorIcons.magnifyingGlass(),
                            color: Palette.greyColor,
                            size: 24,
                          ),
                        ],
                      ),

                    ),

                  ),
                  SliverList(delegate:
                  SliverChildListDelegate([
                    Row(
                      children: [
                        Icon(
                          PhosphorIcons.arrowUp(),
                          color: Colors.black,
                          size: 24,
                        ),
                        const Gap(8),
                        const Text(
                          "Gain in 24hr",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const Gap(8),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.black,
                          size: 24,
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          height: 32,
                          width: 32,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Icon(
                                PhosphorIcons.eyeSlash(),
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        const Gap(16),
                        SizedBox(
                          height: 32,
                          width: 32,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Icon(
                                PhosphorIcons.dotsThreeVertical(),
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Gap(16),
                    TokenItem(),
                    TokenItem(),
                    TokenItem(),
                    TokenItem(),
                    TokenItem(),
                    TokenItem(),
                    TokenItem(),
                    TokenItem(),
                    TokenItem(),
                    TokenItem(),

                  ]))


                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
