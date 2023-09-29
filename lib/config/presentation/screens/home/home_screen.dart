import 'package:flutter/material.dart';
import 'package:widget_y_formatos/config/menu/menu_items.dart';
import 'package:widget_y_formatos/config/presentation/screens/botton/botton_screen.dart';

class HomeScreen extends StatelessWidget {
static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),

    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTitle(menuItem : menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  final MenuItem menuItem;

  const _CustomListTitle({
    super.key,
    required this.menuItem});

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon( menuItem.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded , color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
         Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ButtonScreen(), )
        );
        Navigator.pushNamed(context, menuItem.link);

       // context.pushNamed(CardsScreen.name); 

        //context.push(menuItem.link);
      },
    );
  }
}