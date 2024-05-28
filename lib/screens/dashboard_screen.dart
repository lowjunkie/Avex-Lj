import 'package:design_one/core/common/token_item.dart';
import 'package:design_one/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../core/common/curve_painter.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  bool _isAppBarExpanded = false;



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
                  SliverLayoutBuilder(
                    builder: (BuildContext context, constraints){
                      final scrolled = constraints.scrollOffset > 0;

                      return SliverAppBar(
                        backgroundColor: Colors.white,
                        scrolledUnderElevation: 0,
                        expandedHeight: 160,
                        floating: false,
                        snap: false,
                        pinned: true,
                        bottom: PreferredSize(                       // Add this code
                          preferredSize: constraints.scrollOffset > 350 ?
                          const Size.fromHeight(-35) :
                          const  Size.fromHeight(10),      // Add this code
                          child: Text(''),                           // Add this code
                        ),
                        flexibleSpace: SizedBox(

                          height: constraints.scrollOffset > 350 ? 0 : 160,
                          child: SingleChildScrollView(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.end,
                              alignment: WrapAlignment.spaceBetween,
                              children: [
                                AnimatedSize(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.fastOutSlowIn,
                                  child: FractionallySizedBox(
                                    widthFactor: ( 1 - ((constraints.scrollOffset / 100) < 0.6 ? (constraints.scrollOffset / 100) : 0.6)),
                                    child: Column(
                                      crossAxisAlignment: (constraints.scrollOffset / 100) >= 0.6 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                                      children: [
                                        const Gap(10),

                                            const Text(
                                              "Total balance",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Palette.greyColor),
                                            ),



                                         Gap(scrolled ? 4 : 14),
                                        AnimatedDefaultTextStyle(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.easeInOut,
                                          style: TextStyle(
                                            fontSize: scrolled ? 24 : 36,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          child: const Text.rich(
                                            TextSpan(
                                              text: "\$1,038",
                                              children: [
                                                TextSpan(
                                                  text: ".56",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Palette.greyColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),

                                        ),
                                        const Gap(14)
                                      ],
                                    ),
                                  ),
                                ),
                                AnimatedSize(duration: Duration(milliseconds: 500),
                                  curve: Curves.fastOutSlowIn,
                                  child: FractionallySizedBox(
                                      widthFactor: ( 1 - ((constraints.scrollOffset / 100) < 0.6 ? (constraints.scrollOffset / 100) : 0.6)),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: (constraints.scrollOffset / 100) >= 0.6 ? MainAxisAlignment.end : MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 35,
                                            width: 90,
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
                                                    const Text(
                                                      "18.73%",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          color: Palette.greenDarkColor),
                                                    )
                                                  ],
                                                )),
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

                                    ),
                                )
                              ],
                            ),
                          ),
                        ),

                      );
                    },
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
                  SliverAppBar(
                    expandedHeight: 10,
                    scrolledUnderElevation: 0,
                    floating: false,
                    snap: false,
                    pinned: true,
                    bottom: const PreferredSize(                       // Add this code
                      preferredSize: Size.fromHeight(-35) ,
                      child: Text('')                        // Add this code
                    ),
                    flexibleSpace: Container(
                      child: SizedBox(
                        height: 20,
                        child:  Row(
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
                            Container(
                              decoration: BoxDecoration(
                                  color: Palette.redColor,
                                  borderRadius: BorderRadius.circular(33)),
                              child: SizedBox(
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

                      ),
                    ),

                  ),



                  SliverList(delegate:
                  SliverChildListDelegate([
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
