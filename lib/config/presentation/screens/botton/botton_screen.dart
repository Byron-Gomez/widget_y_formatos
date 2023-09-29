import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
         context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            // Botones elevados
            ElevatedButton(
              onPressed: null,
              child: const Text('Elevated Disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text(
                  'Elevated Icon'),
            ),

            // Botones rellenos
            FilledButton(
              onPressed: () {},
              child: const Text('Filled'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              label: const Text('Filled Icon'),
            ),

            // Botones delineados
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outline'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Outline Icon'),
              icon: const Icon(Icons.terminal),
            ),

            // Botones de texto
            TextButton(
              onPressed: () {},
              child: const Text('Text'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_box_outlined),
              label: const Text('Text Icon'),
            ),

            // Botones personalizados
            const CustomButton(),

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_rounded)),
              IconButton(
              onPressed: (){},
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)
              ),
              )
          ],
        ),
      ),
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
        color: Colors.red,
      child: InkWell(
        onTap: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric( horizontal: 20,vertical: 10),
          child: Text('Hola Mundo', style: TextStyle(color: Colors.white),),
        ),
      ),
      ),
    );
  }
}