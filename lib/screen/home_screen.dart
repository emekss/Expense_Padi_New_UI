import 'package:flutter/material.dart';

class CustomPageBackGroundPage extends StatefulWidget {
  const CustomPageBackGroundPage({
    super.key,
    required this.title,
    required this.backColor,
    required this.curvedShapeColor,
  });
  final String title;

  final Color backColor;
  final Color curvedShapeColor;

  @override
  _CustomPageBackGroundPage createState() => _CustomPageBackGroundPage();
}

class _CustomPageBackGroundPage extends State<CustomPageBackGroundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: widget.backColor,
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color.fromRGBO(196, 211, 223, 1)),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                child: CurvedShape(
              curvedShapeColor: widget.curvedShapeColor,
            )),
            const Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurvedShape extends StatelessWidget {
  const CurvedShape({super.key, required this.curvedShapeColor});
  final Color curvedShapeColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 1000,
      child: CustomPaint(
        painter: _MyPainter(curvedShapeColor),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  late Color _curvedShapeColor;
  _MyPainter(Color curvedShapeColor) {
    _curvedShapeColor = curvedShapeColor;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = _curvedShapeColor;
    var height = size.height * 0.185;
    var radius = 20;
    Offset topLeft = const Offset(0, 0);
    Offset topRight = Offset(size.width, 0);
    Offset bottomLeft = Offset(0, height);
    Offset bottomRight = Offset(size.width, height);
    Offset leftArcEnd = Offset(bottomLeft.dx + radius, bottomLeft.dy - radius);
    Offset rightArcStart =
        Offset(bottomRight.dx - radius, bottomRight.dy - radius);

    Path path = Path()
      ..moveTo(topLeft.dx,
          topLeft.dy) // this move isn't required since the start point is (0,0)
      ..lineTo(bottomLeft.dx, bottomLeft.dy)
      ..arcToPoint(leftArcEnd, radius: const Radius.circular(30))
      ..lineTo(rightArcStart.dx, rightArcStart.dy)
      ..arcToPoint(bottomRight, radius: const Radius.circular(30))
      ..lineTo(topRight.dx, topRight.dy)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
