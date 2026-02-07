import 'dart:math';

import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0',},
  {'elevation': 1.0, 'label': 'Elevation 1',},
  {'elevation': 2.0, 'label': 'Elevation 2',},
  {'elevation': 3.0, 'label': 'Elevation 3',},
  {'elevation': 4.0, 'label': 'Elevation 4',},
  {'elevation': 5.0, 'label': 'Elevation 5',}
];

class CardsScreen extends StatelessWidget {

  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Screen"),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((cards) => _CardType1(label: cards['label'], elevation: cards['elevation'])),

          ...cards.map((cards) => _CardType2(label: cards['label'], elevation: cards['elevation'])),

          ...cards.map((cards) => _CardType3(label: cards['label'], elevation: cards['elevation'])),

          ...cards.map((cards) => _CardType4(label: cards['label'], elevation: cards['elevation'])),

          const SizedBox(height: 50,),
        ],
        ),
    );
  }
}

class _CardType1 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType1({
    required this.label, 
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.more_vert_outlined)
              )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label)
            )
          ],
        ),
      )
    );
  }
}


class _CardType2 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType2({
    required this.label, 
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(
          color: colors.outline, 
          // width: 2
          ), //Borde de la card
      ), //Es la forma de la card
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.more_vert_outlined)
              )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label)
            )
          ],
        ),
      )
    );
  }
}

class _CardType3 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType3({
    required this.label, 
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.more_vert_outlined)
              )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Filled')
            )
          ],
        ),
      )
    );
  }
}


class _CardType4 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType4({
    required this.label, 
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge, //Para poner los bordes redondeados a la tarjeta
      elevation: elevation,
      child: Stack(
        children: [
      
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350', //Para colocar una imagen desde una URL
            height: 350,
            fit: BoxFit.cover //Para que la imagen se adapte al tamaño de la tarjeta o del padre 
          ),
      
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration( //Para colocar un fondo al icono y darle forma unica
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.more_vert_outlined)
              ),
            )
          ),
          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Text('$label - image')
          // )
        ],
      )
    );
  }
}