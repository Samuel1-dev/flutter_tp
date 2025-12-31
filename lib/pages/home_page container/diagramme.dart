import 'package:flutter/material.dart';
import 'dart:math';

class Diagramme extends StatelessWidget {
  const   Diagramme({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-8, -18),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1),
        width: 100, 
        height: 100,
        child: CustomPaint(
          painter: DonutPainter(),
        ),
      ),
    );
  }
}

class DonutPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 16.0;
    Rect rect = Offset(strokeWidth / 2, strokeWidth / 2) & 
                Size(size.width - strokeWidth, size.height - strokeWidth);
    
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round; 

    const Color purple = Color(0xFF9147FF);
    const Color green = Color(0xFF42BE65);
    const Color orange = Color(0xFFF1A55E);
    const Color dark = Color(0xFF1E1E2C);

    
    double startAngle = -pi / 2; 
     _drawSegment(canvas, rect, startAngle, 0.1, dark, paint);
    startAngle += 0.05 + 0.01;
    _drawSegment(canvas, rect, startAngle, 0.6, const Color.fromARGB(255, 34, 34, 66), paint);
    startAngle += 0.6 + 0.15; 

    _drawSegment(canvas, rect, startAngle, 0.6, const Color.fromARGB(255, 34, 34, 66), paint);
    startAngle += 0.6 + 0.15; 
 _drawSegment(canvas, rect, startAngle, 0.1, dark, paint);
    startAngle += 0.05 + 0.01;
    _drawSegment(canvas, rect, startAngle, 1.8, purple, paint);
    startAngle += 1.8 + 0.15;
    _drawSegment(canvas, rect, startAngle, 0.1, dark, paint);
    startAngle += 0.05 + 0.01;
    _drawSegment(canvas, rect, startAngle, 2.0, green, paint);
    startAngle += 2.0 + 0.15;
   _drawSegment(canvas, rect, startAngle, 0.1, dark, paint);
    startAngle += 0.05 + 0.01;
    _drawSegment(canvas, rect, startAngle, 0.4, orange, paint);
    
  }

  void _drawSegment(Canvas canvas, Rect rect, double start, double sweep, Color color, Paint paint) {
    paint.color = color;
    canvas.drawArc(rect, start, sweep, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}