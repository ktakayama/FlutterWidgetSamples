import 'package:flutter/material.dart';

class ContainerSample extends StatelessWidget {
  const ContainerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 110;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Wrap(
        runSpacing: 20,
        spacing: 20,
        children: [
          Container(
            color: Colors.red,
            width: size,
            height: size,
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(12),
            width: size,
            height: size,
          ),
          Container(
            width: size,
            height: size,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.green, Colors.blue])),
            child: const Center(
                child: Text("LinearGradient",
                    style: TextStyle(color: Colors.white))),
          ),
          Container(
            width: size,
            height: size,
            decoration: const BoxDecoration(
                gradient: RadialGradient(colors: [Colors.black, Colors.green])),
            child: const Center(
                child: Text("RadialGradient",
                    style: TextStyle(color: Colors.white))),
          ),
          Container(
            width: size,
            height: size,
            foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.yellow, Colors.red])),
            child: const Center(
                child: Text("foregroundDecoration",
                    style: TextStyle(backgroundColor: Colors.white))),
          ),
          Container(
            width: size,
            height: size,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Colors.black])),
          ),
          Container(
            width: size * 1.5,
            height: size * 1.5,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.1,
                  0.2,
                  0.5,
                  1
                ],
                    colors: [
                  Colors.green,
                  Colors.blue,
                  Colors.purple,
                  Colors.orange
                ])),
          ),
        ],
      ),
    );
  }
}
