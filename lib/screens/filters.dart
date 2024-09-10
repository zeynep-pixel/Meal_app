import 'package:flutter/material.dart';
//import 'package:meal_app/screens/tabs.dart';
//import 'package:meal_app/widgets/main_drawer.dart';

enum Filter{
 glutenFree,
 lactoseFree,
 vegetarian,
 vegan
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilters});

  final Map<Filter, bool> currentFilters;

  @override
  State<StatefulWidget> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FiltersScreen> {
  var glutenFreeFilter = false;
  var laktozFreeFilter = false;
  var vegaterianreeFilter = false;
  var veganFreeFilter = false;

  @override
  void initState() {
   
    super.initState();
    glutenFreeFilter = widget.currentFilters[Filter.glutenFree]!;
    laktozFreeFilter = widget.currentFilters[Filter.lactoseFree]!;
    vegaterianreeFilter = widget.currentFilters[Filter.vegetarian]!;
    veganFreeFilter = widget.currentFilters[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seçimleriniz'),
      ),
      //drawer: MainDrawer(onSelectScreen: (identifier){
      //  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => const TabsScreen()));
      //}),
      body: PopScope(
        canPop: false,
       onPopInvoked: (bool didPop) {
      if(didPop) return;
      Navigator.of(context).pop({
        Filter.glutenFree: glutenFreeFilter,
        Filter.lactoseFree: laktozFreeFilter,
        Filter.vegetarian: vegaterianreeFilter,
        Filter.vegan: veganFreeFilter,
      });
    },
        child: Column(
          children: [
            SwitchListTile(
                value: glutenFreeFilter,
                onChanged: (isChecked) {
                  setState(() {
                     glutenFreeFilter = isChecked;
                  });
                },
                title: Text(
                  'Glutensiz',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'Sadece glutensiz tarifler.',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(left: 34, right: 22)),
                SwitchListTile(
                value: laktozFreeFilter,
                onChanged: (isChecked) {
                  setState(() {
                     laktozFreeFilter = isChecked;
                  });
                },
                title: Text(
                  'Laktozsuz',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'Sadece laktozsuz tarifler.',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(left: 34, right: 22)),
                SwitchListTile(
                value: vegaterianreeFilter,
                onChanged: (isChecked) {
                  setState(() {
                     vegaterianreeFilter = isChecked;
                  });
                },
                title: Text(
                  'Vejateryan',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'Sadece vejetaryen tarifler.',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(left: 34, right: 22)),
                SwitchListTile(
                value: veganFreeFilter,
                onChanged: (isChecked) {
                  setState(() {
                     veganFreeFilter = isChecked;
                  });
                },
                title: Text(
                  'Vegan',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'Sadece vegan tarifler.',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(left: 34, right: 22)),
          ],
        ),
      ),
    );
  }
}
