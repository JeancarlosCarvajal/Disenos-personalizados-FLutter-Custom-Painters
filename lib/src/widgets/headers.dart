import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615aab),
    );
  }
}

class HeaderCircularBorder extends StatelessWidget {
  const HeaderCircularBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70)),
        color: Color(0xff615aab),

      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615aab),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}


class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); // es el lapiz
    //propiedades del lapiz
    paint.color = Color(0xff615aab);
    paint.style = PaintingStyle.fill; // son los border y el fiil es para rellenar. strock para lineas
    paint.strokeWidth = 5.0; // espesor de la linea

    final path = Path();

    // dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.35); // inicia a dibujar
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);

    // dibuja canvas
    canvas.drawPath(path, paint); 
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // siempre en true
    return true;
  }

}


class HeaderTriangle extends StatelessWidget {
  const HeaderTriangle ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615aab),
      child: CustomPaint(
        painter: _HeaderTrianglePainter(),
      ),
    );
  }
}


class _HeaderTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); // es el lapiz
    //propiedades del lapiz
    paint.color = Color(0xff615aab);
    paint.style = PaintingStyle.fill; // son los border y el fiil es para rellenar. strock para lineas
    paint.strokeWidth = 10.0; // espesor de la linea

    final path = Path();

    // dibujar con el path y el lapiz
    // path.moveTo(0, 0); // inicia a dibujar en ese punto. delimita todo el dibujo
    path.lineTo(size.width, size.height); // linea vertica que baja desde la derecha hasta abajo al final
    path.lineTo(size.width, 0); // dibuja linea horizontal ocura todo el ancho arriba
    // path.lineTo(0, 0); // vuelve al punto inicial

    // dibuja canvas
    canvas.drawPath(path, paint); 
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // siempre en true
    return true;
  }

}

class HeaderPike extends StatelessWidget {
  const HeaderPike ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615aab),
      child: CustomPaint(
        painter: _HeaderPikePainter(),
      ),
    );
  }
}


class _HeaderPikePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); // es el lapiz
    //propiedades del lapiz
    paint.color = Color(0xff615aab);
    paint.style = PaintingStyle.fill; // son los border y el fiil es para rellenar. strock para lineas
    paint.strokeWidth = 10.0; // espesor de la linea

    final path = Path();

    // dibujar con el path y el lapiz. empieza de izquierda a derecha como el reloj
    path.moveTo(size.width*0.5, size.height*0.40); // inicia a dibujar en ese punto. delimita todo el dibujo
    path.lineTo(0, size.height*0.3);  
    path.lineTo(0, 0);  
    path.lineTo(size.width, 0); // dibuja linea horizontal ocura todo el ancho arriba
    path.lineTo(size.width, size.height*0.3);  
    // path.lineTo(0, size.height*0.3);  
    // path.lineTo(0, 0); // vuelve al punto inicial

    // dibuja canvas
    canvas.drawPath(path, paint); 
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // siempre en true
    return true;
  }

}