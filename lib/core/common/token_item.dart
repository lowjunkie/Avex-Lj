import 'package:design_one/core/common/curve_painter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../theme/palette.dart';

class TokenItem extends StatefulWidget {
  const TokenItem({super.key});

  @override
  State<TokenItem> createState() => _TokenItemState();
}

class _TokenItemState extends State<TokenItem> {

  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Palette.dividerColor),
      child: ExpansionTile(
        maintainState: true,
        tilePadding: EdgeInsets.all(0),
        childrenPadding: EdgeInsets.all(0),
        title: Text(
          'Ethereum',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        leading: CircleAvatar(
          child: Image(
            image: AssetImage("assets/images/eth.png"),
          ),
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$142.39",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Gap(4),
                  Text(
                    "-0.02%",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Palette.greyColor),
                  ),
                ],
              ),
              const Gap(12),
              Icon(
                PhosphorIcons.caretDown(),
                color: Palette.greyColor,
                size: 18,
              ),
            ],
          ),
        ),
        subtitle: const Text(
          '0.678 ETH',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Palette.greyColor),
        ),
        onExpansionChanged: (bool expanded) {
          setState(() {
            _customTileExpanded = expanded;

          });
        },
        children: <Widget>[
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -24,
                          left: 20,
                          child: AnimatedSize(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn,
                            child: SizedBox(
                              width: _customTileExpanded ? 68 : 0,
                              height: _customTileExpanded ? 52 : 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Palette.greyColor),
                                    borderRadius: BorderRadius.circular(72)),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 50,
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: Container(
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 54.0, right: 35),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Ethereum',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text('0.678 ETH',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Palette.greyColor))
                                ],
                              ),
                              Expanded(child: Column()),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "\$142.39",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Gap(4),
                                  Text(
                                    "-0.02%",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Palette.greyColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -24,
                          left: 20,
                          child: AnimatedSize(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn,
                            child: SizedBox(
                              width: _customTileExpanded ? 68 : 0,
                              height: _customTileExpanded ? 52 : 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Palette.greyColor),
                                    borderRadius: BorderRadius.circular(72)),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 50,
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: Container(
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 54.0, right: 35),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Ethereum',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text('0.678 ETH',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Palette.greyColor))
                                ],
                              ),
                              Expanded(child: Column()),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "\$142.39",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Gap(4),
                                  Text(
                                    "-0.02%",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Palette.greyColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: 0,
                  left: 20,

                  child: SizedBox(
                    height: 50,
                    width: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Palette.greyColor
                      ),
                    ),
                  ))

            ],
          ),
        ],
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.only(top: 0.0),
// child: Column(
// children: [
// Row(
// children: [
// const CircleAvatar(
// child: Image(
// image: AssetImage("assets/images/eth.png"),
// ),
// ),
// const Gap(12),
// const Column(
// children: [
// Text(
// "Ethereum",
// style: TextStyle(
// fontSize: 16,
// fontWeight: FontWeight.w600,
// color: Colors.black),
// ),
// Gap(4),
// Text(
// "0.678 ETH",
// style: TextStyle(
// fontSize: 14,
// fontWeight: FontWeight.w600,
// color: Palette.greyColor),
// ),
// ],
// ),
// const Expanded(child: Column()),
// const Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Text(
// "\$142.39",
// style: TextStyle(
// fontSize: 16,
// fontWeight: FontWeight.w600,
// color: Colors.black),
// ),
// Gap(4),
// Text(
// "-0.02%",
// style: TextStyle(
// fontSize: 14,
// fontWeight: FontWeight.w600,
// color: Palette.greyColor),
// ),
// ],
// ),
// const Gap(12),
// Icon(
// PhosphorIcons.caretDown(),
// color: Palette.greyColor,
// size: 18,
// ),
// ],
// ),
// const Divider(height:36, thickness: 2, color: Palette.dividerColor,),
// ],
// ),
// )
