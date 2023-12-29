import 'package:flutter/material.dart';

class StationPainter extends CustomPainter {
  const StationPainter(this.text);

  final String text;

  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.9302110, size.height * 0.4310140);
    path_0.cubicTo(
      size.width * 0.9302110,
      size.height * 0.6690570,
      size.width * 0.7372390,
      size.height * 0.8620280,
      size.width * 0.4991970,
      size.height * 0.8620280,
    );
    path_0.cubicTo(
      size.width * 0.2611540,
      size.height * 0.8620280,
      size.width * 0.06818240,
      size.height * 0.6690570,
      size.width * 0.06818240,
      size.height * 0.4310140,
    );
    path_0.cubicTo(
      size.width * 0.06818240,
      size.height * 0.1929720,
      size.width * 0.2611540,
      0,
      size.width * 0.4991970,
      0,
    );
    path_0.cubicTo(
      size.width * 0.7372390,
      0,
      size.width * 0.9302110,
      size.height * 0.1929720,
      size.width * 0.9302110,
      size.height * 0.4310140,
    );
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white;
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.5218810, size.height * 0.8273650);
    path_1.cubicTo(
      size.width * 0.7305760,
      size.height * 0.8156090,
      size.width * 0.8961830,
      size.height * 0.6426520,
      size.width * 0.8961830,
      size.height * 0.4310160,
    );
    path_1.cubicTo(
      size.width * 0.8961830,
      size.height * 0.2193800,
      size.width * 0.7305760,
      size.height * 0.04642330,
      size.width * 0.5218810,
      size.height * 0.03466640,
    );
    path_1.lineTo(size.width * 0.5218810, size.height * 0.07939900);
    path_1.lineTo(size.width * 0.4991970, size.height * 0.07939900);
    path_1.lineTo(size.width * 0.4878540, size.height * 0.07939900);
    path_1.lineTo(size.width * 0.4878540, size.height * 0.03418800);
    path_1.cubicTo(
      size.width * 0.2738500,
      size.height * 0.04019200,
      size.width * 0.1022100,
      size.height * 0.2155600,
      size.width * 0.1022100,
      size.height * 0.4310160,
    );
    path_1.cubicTo(
      size.width * 0.1022100,
      size.height * 0.6464720,
      size.width * 0.2738500,
      size.height * 0.8218400,
      size.width * 0.4878540,
      size.height * 0.8278440,
    );
    path_1.lineTo(size.width * 0.4878540, size.height * 0.7824530);
    path_1.cubicTo(
      size.width * 0.2989110,
      size.height * 0.7764660,
      size.width * 0.1475800,
      size.height * 0.6214130,
      size.width * 0.1475800,
      size.height * 0.4310160,
    );
    path_1.cubicTo(
      size.width * 0.1475800,
      size.height * 0.2368230,
      size.width * 0.3050040,
      size.height * 0.07939900,
      size.width * 0.4991970,
      size.height * 0.07939900,
    );
    path_1.cubicTo(
      size.width * 0.6933890,
      size.height * 0.07939900,
      size.width * 0.8508130,
      size.height * 0.2368230,
      size.width * 0.8508130,
      size.height * 0.4310160,
    );
    path_1.cubicTo(
      size.width * 0.8508130,
      size.height * 0.6175880,
      size.width * 0.7055020,
      size.height * 0.7702210,
      size.width * 0.5218810,
      size.height * 0.7819130,
    );
    path_1.lineTo(size.width * 0.5218810, size.height * 0.8273650);
    path_1.close();

    final Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff23C990);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.8167860, size.height * 0.4310160);
    path_2.cubicTo(
      size.width * 0.8167860,
      size.height * 0.6064160,
      size.width * 0.6745960,
      size.height * 0.7486050,
      size.width * 0.4991970,
      size.height * 0.7486050,
    );
    path_2.cubicTo(
      size.width * 0.3237970,
      size.height * 0.7486050,
      size.width * 0.1816070,
      size.height * 0.6064160,
      size.width * 0.1816070,
      size.height * 0.4310160,
    );
    path_2.cubicTo(
      size.width * 0.1816070,
      size.height * 0.2556160,
      size.width * 0.3237970,
      size.height * 0.1134260,
      size.width * 0.4991970,
      size.height * 0.1134260,
    );
    path_2.cubicTo(
      size.width * 0.6745960,
      size.height * 0.1134260,
      size.width * 0.8167860,
      size.height * 0.2556160,
      size.width * 0.8167860,
      size.height * 0.4310160,
    );
    path_2.close();

    final Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff23C990);
    canvas.drawPath(path_2, paint2Fill);

    final Path path_3 = Path();
    path_3.moveTo(size.width * 0.5087090, size.height * 0.9948360);
    path_3.cubicTo(
      size.width * 0.5042360,
      size.height * 1.001720,
      size.width * 0.4941570,
      size.height * 1.001720,
      size.width * 0.4896840,
      size.height * 0.9948360,
    );
    path_3.lineTo(size.width * 0.3927020, size.height * 0.8455220);
    path_3.cubicTo(
      size.width * 0.3878010,
      size.height * 0.8379760,
      size.width * 0.3932160,
      size.height * 0.8280010,
      size.width * 0.4022140,
      size.height * 0.8280010,
    );
    path_3.lineTo(size.width * 0.5961790, size.height * 0.8280010);
    path_3.cubicTo(
      size.width * 0.6051770,
      size.height * 0.8280010,
      size.width * 0.6105920,
      size.height * 0.8379760,
      size.width * 0.6056910,
      size.height * 0.8455220,
    );
    path_3.lineTo(size.width * 0.5087090, size.height * 0.9948360);
    path_3.close();

    final Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = Colors.white;
    canvas.drawPath(path_3, paint3Fill);

    final Path path_4 = Path();
    path_4.moveTo(size.width * 0.4991960, size.height * 0.9754530);
    path_4.lineTo(size.width * 0.4206130, size.height * 0.8544670);
    path_4.lineTo(size.width * 0.5777790, size.height * 0.8544670);
    path_4.lineTo(size.width * 0.4991960, size.height * 0.9754530);
    path_4.close();

    final Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff23C990);
    canvas.drawPath(path_4, paint4Fill);

    final textSpan = TextSpan(
      text: text,
      style: TextStyle(
        fontSize: size.width * 0.16,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(maxWidth: size.width);
    final offset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2 - 8,
    );
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
