import 'package:design_one/theme/palette.dart';
import 'package:flutter/material.dart';

class CurveCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Palette.greyColor
      ..style = PaintingStyle.stroke
    ..strokeWidth = 1;

    var path = Path();
    const points = [
      {
        'dx': 0,
        'dy': 0
      },
      {
        'dx': 0,
        'dy': 30
      },
      {
        'dx': 0,
        'dy': 40
      },

    ];

    // path.moveTo(points[0]['dx']!.toDouble(), points[0]['dy']!.toDouble());
    //
    // for(var i = 1; i < points.length - 2; i++){
    //   var xc = (points[i]['dx']! + points[i+1]['dx']!) / 2;
    //   var yc = (points[i]['dy']! + points[i+1]['dy']!) / 2;
    //
    //   path.quadraticBezierTo(points[i]['dx']!.toDouble(),points[i]['dy']!.toDouble(), xc, yc);
    //
    // }
    // path.quadraticBezierTo(
    //     points[points.length - 2]['dx']!.toDouble(),
    //     points[points.length - 2]['dy']!.toDouble(),
    //     points[points.length - 1]['dx']!.toDouble(),
    //     points[points.length - 1]['dy']!.toDouble());
    //
    // canvas.drawPath(path, paint..color = Palette.greyColor);




    // var offsets = [
    //   {
    //     'x': Offset(0, 0),
    //     'y': Offset(16,40)
    //
    //   }
    // ];
    // path.moveTo(16, 0);
    // path.cubicTo(
    //     16,
    //     0,
    //     16,
    //     0 + 40,
    //     16,
    //     0 + 40);
    path.cubicTo(2, 32, -2, 42, 20, 42);
    //
    //
    //
    //
    canvas.drawPath(path, paint..color = Palette.greyColor);

    // canvas.drawLine(offsets[0]['x']!, offsets[0]['y']!, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}