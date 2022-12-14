import 'package:custom_painter/src/pages/animations_page.dart';
import 'package:custom_painter/src/retos/cuadrado_animado_page.dart';
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
      // body: HeaderCurve(),  
      // body: HeaderWave(),   
      // body: HeaderWaveGradient(),    
      // body: AnimationsPage(),     
      body: CuadradoAnimadoPage(),      
    );
  }
}