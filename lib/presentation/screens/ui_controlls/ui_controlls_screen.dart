import 'package:flutter/material.dart';

class UIControllsScreen extends StatelessWidget {
  static const String name = 'ui_controlls_screen';
  const UIControllsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Controlls')),

      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Developer Mode'),
          subtitle: Text('Controles adicionales para desarrolladores'),
          value: isDeveloper,
          onChanged: (value) => setState(() => isDeveloper = value),
        ),

        ExpansionTile(
          title: Text('Vehiculo Transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: Text('By Car'),
              subtitle: Text('Viajar por carretera'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: Text('By Plane'),
              subtitle: Text('Viajar por aire'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),

            RadioListTile(
              title: Text('By Boat'),
              subtitle: Text('Viajar por mar'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: Text('By Submarine'),
              subtitle: Text('Viajar por el fondo del mar'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
      

        CheckboxListTile(
          title: Text('¿Desayuno?'),
          value: wantsBreakfast , 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          })
        ),

        CheckboxListTile(
          title: Text('¿Almuerzo?'),
          value: wantsLunch , 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          })
        ),

        CheckboxListTile(
          title: Text('¿Cena?'),
          value: wantsDinner , 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          })
        ),
      
      
      ],
    );
  }
}
