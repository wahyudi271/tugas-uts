import 'package:flutter/material.dart';

class LayoutRow extends StatelessWidget {
  const LayoutRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              flexibleSpace: SafeArea(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        IconButton(
                          icon: Icon(Icons.menu),
                          tooltip: 'Navigation menu',
                          onPressed: null, // null disables the button
                        ),
                        Spacer(),
                        Text(
                          'Kantin Politeknik Kampar',
                          textAlign: TextAlign.center,
                        ),
                        Spacer()
                      ],
                    )
                  ],
                ),
              )),
            ),
            // ignore: avoid_unnecessary_containers
            body: Container(
                child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Nasi Goreng',
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'lib/assets/gambar/nasigoreng.jpg',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ))));
  }
}

void main() {
  runApp(LayoutRow());
}