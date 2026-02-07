import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';  

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Elevated')), //Primer boton
            ElevatedButton(onPressed: null, child: const Text('Elevated Disabled')), //Segundo boton 

            ElevatedButton.icon( //Segundo boton con icono
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon')),

            FilledButton(onPressed: (){}, child: const Text('Filled')), //Tercer boton

            FilledButton.icon(onPressed: (){}, icon: Icon(Icons.accessibility_new), label: Text('Filled Icon')), //Cuanto boton filled con icono

            OutlinedButton(onPressed: (){}, child: const Text('Outlined')), //Cuarto boton
            OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.terminal), label: Text('Outlined Icon')), //Cuarto boton

            TextButton(onPressed: (){}, child: const Text('Text Button')), //Quinto boton
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.text_fields), label: const Text('Text Button')), //Quinto boton

            //CustomButton
            CustomButton(),

            IconButton(onPressed: (){}, icon: const Icon(Icons.volume_up)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.volume_up),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber),
                iconColor: MaterialStatePropertyAll(Colors.black)
              ),)
          ],
        )
    )      
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          // splashColor: Color(0xFF000000),
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}