import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Icon(Icons.fastfood,
                    size: 48, color: Theme.of(context).colorScheme.primary),
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Cooking App',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                )
              ],
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
          ListTile(
            leading: Icon(Icons.restaurant,
                size: 26, color: Theme.of(context).colorScheme.primary),
            title: Text('Yiyecekler',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white)),
            onTap: () {
              onSelectScreen('Yiyecekler');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings,
                size: 26, color: Theme.of(context).colorScheme.primary),
            title: Text('Ayarlar',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white)),
            onTap: () {
              onSelectScreen('Ayarlar');
            },
          )
        ],
      ),
    );
  }
}
