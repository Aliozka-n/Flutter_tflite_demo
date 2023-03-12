import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final Offset start;
  final Offset end;

  LinePainter(this.start, this.end);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
        // çizgi rengi
      ..color = Colors.black
        // çizgi kalınlığı
      ..strokeWidth = 2;

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return oldDelegate.start != start || oldDelegate.end != end;
  }
}

class MyLineDraw extends StatelessWidget {
  // çizgi başlangıç noktası (ekranın ortası => refarans)
  final Offset start;
  final Offset end;
  MyLineDraw({required this.start,required this.end});
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(start, end),
    );
  }
}
