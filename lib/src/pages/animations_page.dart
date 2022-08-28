import 'package:flutter/material.dart';
import 'dart:math' as Math;
class AnimationsPage extends StatelessWidget {
   
  const AnimationsPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: CuadradoAnimado(),
      ),
    );
  }
}

// las animaciones se necesitan statefulwidget
class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    Key? key,
  }) : super(key: key);

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

// SingleTickerProviderStateMixin se agrego para poder usar el this en controller AnimationCOntroller
class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin {

  // para las animaciones se necesita Animation y unn Animation controller
  // Animatiion permite mnejar la animacion, indica cuando la animacion empiece a correr
  late AnimationController controller;

  // es el tipo de cosa que quiero animar
  late Animation<double> rotation;

  // controlar la opacidad
  late Animation<double> opacidad;

  //inicializat el objeto
  @override
  void initState() { // importante en el fulwidget
    // inicializar el controller
    // vsync es la fps de la animacion
    // SingleTickerProviderStateMixin se agrego para poder usar el this en controller AnimationCOntroller
    // ver documentacion de las curves https://easings.net/en
    controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 4000)
    );

    // controllar la opacidad
    opacidad = Tween(begin: 0.1, end: 1.0).animate(controller);

    // hacer la rotacion. el controller es el que manda a la animacion
    // rotation = Tween(begin: 0.0, end: 2 * Math.pi ).animate(controller);
    rotation = Tween(begin: 0.0, end: 2 * Math.pi ).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOutBack)
    );

    // siempre en el init state se debe colocar los listener
    controller.addListener(() {
      print('jean: Status: ${controller.status}');
      if(controller.status == AnimationStatus.completed){
        controller.reverse();
        // controller.reset();
      } 
      // else if(controller.status == AnimationStatus.dismissed){
      //   controller.forward();
      // }
      
    });

    super.initState();
  }

  @override
  void dispose() { // importante en el fulwidget
    // hay que desaserse del controller, hacer la limpieza
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // para reproducir
    controller.forward();
    // controller.repeat(); // repite por la eternidad
    return AnimatedBuilder(
      animation: controller,
      child: const _Rectangulo(), // otra opcion 1
      builder: (BuildContext context, Widget? childRectangulo) {
        print('jean: ${rotation.value}'); 
        return  Transform.rotate(
          angle: rotation.value,
          // child: child, // otra opcion 1
          child: Opacity(
            opacity: opacidad.value,
            child: childRectangulo
          )
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
    const _Rectangulo({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: const BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}