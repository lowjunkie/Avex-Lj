import 'package:design_one/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../theme/palette.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  bool isOpen = false;

  static final List<Widget> _widgetOptions = <Widget>[
    const DashboardScreen(),
    const Text("two"),
    const Text("Ticket"),
    const Text("Profile")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isOpen = true;
          });
          showGeneralDialog(
            barrierLabel: "",
            barrierDismissible: true,
            barrierColor: Colors.black.withOpacity(0.5),
            transitionDuration: Duration(milliseconds: 200),
            context: context,
            pageBuilder: (context, anim1, anim2) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 450,
                  margin: EdgeInsets.only(bottom: 150, left: 12, right: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: SizedBox(
                      width: double.infinity,
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Gap(12),
                        const Text(
                          'BASICS',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                              color: Palette.greyColor),
                        ),
                        const Gap(14),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 42,
                                    height: 42,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Palette.greenLightColor,
                                          borderRadius:
                                              BorderRadius.circular(32)),
                                      child: Center(
                                        child: Icon(
                                          PhosphorIconsFill.plus,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Buy',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 42,
                                    height: 42,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Palette.blueColor,
                                          borderRadius:
                                              BorderRadius.circular(32)),
                                      child: Center(
                                        child: Icon(
                                          PhosphorIconsFill.paperPlaneTilt,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Send',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 42,
                                    height: 42,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Palette.pinkColor,
                                          borderRadius:
                                              BorderRadius.circular(32)),
                                      child: Center(
                                        child: Icon(
                                          PhosphorIconsFill.arrowDown,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Receive',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 42,
                                    height: 42,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Palette.yellowColor,
                                          borderRadius:
                                              BorderRadius.circular(32)),
                                      child: Center(
                                        child: Icon(
                                          PhosphorIconsFill.arrowsClockwise,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Swap',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Gap(24),
                        const Text(
                          'ADVANCED',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                              color: Palette.greyColor),
                        ),
                        const Gap(18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 42,
                                    height: 42,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Palette.purpleColor,
                                          borderRadius: BorderRadius.circular(32)),
                                      child: const Center(
                                        child: Icon(
                                          PhosphorIconsFill.lightning,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(12),
                                  const Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Advance send',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 16,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Gap(6),
                                        Text(
                                          'Seamlessly auto-swap and send tokens in one step.',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.w500,
                                              color: Palette.greyColor),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Gap(14),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 42,
                                    height: 42,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Palette.pinkColor,
                                          borderRadius: BorderRadius.circular(32)),
                                      child: const Center(
                                        child: Icon(
                                          PhosphorIconsFill.handCoins,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(12),
                                  const Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Lending & Borrowing',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 16,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Gap(6),
                                        Text(
                                          'Seamlessly auto-swap and send tokens in one step.',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.w500,
                                              color: Palette.greyColor),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Gap(14),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 42,
                                    height: 42,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Palette.blueColor,
                                          borderRadius: BorderRadius.circular(32)),
                                      child: const Center(
                                        child: Icon(
                                          PhosphorIconsFill.handshake,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(12),
                                  const Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Staking',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 16,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Gap(6),
                                        Text(
                                          'Seamlessly trade and exchange tokens within your wallet.',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.w500,
                                              color: Palette.greyColor),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                ),
              );
            },
            transitionBuilder: (context, anim1, anim2, child) {
              return SlideTransition(
                position:
                    Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
                        .animate(anim1),
                child: child,
              );
            },
          ).then((value) => setState((){
            isOpen = false;
          }));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Colors.black,
        child: Icon(
          isOpen ? PhosphorIcons.caretDoubleDown() : PhosphorIcons.caretDoubleUp(),
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                PhosphorIcons.shootingStar(),
                color: Color(0xFF979DAA),
              ),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(
                PhosphorIcons.magnifyingGlass(),
                color: Color(0xFF979DAA),
              ),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: Icon(
                PhosphorIcons.storefront(),
                color: Color(0xFF979DAA),
              ),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: Icon(
                PhosphorIcons.question(),
                color: Color(0xFF979DAA),
              ),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}
