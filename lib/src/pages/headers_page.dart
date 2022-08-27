import 'package:custom_painter/src/widgets/headers.dart';
import 'package:flutter/material.dart';




class HeadersPage extends StatelessWidget {
  const HeadersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: HeaderCuadrado(),
      // body: HeaderCircularBorder(),
      // body: HeaderDiagonal(),
      // body: HeaderTriangle(), 
      // body: HeaderPike(), 
      body: HeaderCurve(),  
    );
  }
}