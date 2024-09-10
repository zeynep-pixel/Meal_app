import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/categories.dart';
import 'package:meal_app/screens/filters.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/main_drawer.dart';

const kInitialFilters= {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false,
 };

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabScreenState();
  }
}

class _TabScreenState extends State<TabsScreen> {
 int selectedPageIndex = 0;
 final List<Meal> favoriteMeals = [];
 Map<Filter, bool> selectedFilters= {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false,
 };


 void showInfoMessage(String message){
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message))
  );
 }

void toggleMealFovireStatus(Meal meal){
  final isExisting = favoriteMeals.contains(meal);

  if(isExisting){
    setState(() {
      favoriteMeals.remove(meal);
      showInfoMessage('Favorilerden kaldırıldı.');
    });
    
  }else{
    setState(() {
      favoriteMeals.add(meal);
      showInfoMessage('Favorilere eklendi.');
    });
    
  }
}

 void selectPage(int index){
  setState(() {
    selectedPageIndex = index;
  });
 }

 void setScreen(String identifier) async {

     Navigator.of(context).pop();
     if(identifier=='Ayarlar'){
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(builder: (ctx) => FiltersScreen(currentFilters: selectedFilters,))
      );
      
      setState(() {
        selectedFilters = result ?? kInitialFilters;
      });
      
     }
     
 } 

  @override
  Widget build(BuildContext context) {
    final availableMeals = dummyMeals.where((meal){
      if(selectedFilters[Filter.glutenFree]! && !meal.isGlutenFree){
        return false;
      }
      if(selectedFilters[Filter.lactoseFree]! && !meal.isLactoseFree){
        return false;
      }
      if(selectedFilters[Filter.vegetarian]! && !meal.isVegetarian){
        return false;
      }
      if(selectedFilters[Filter.vegan]! && !meal.isVegan){
        return false;
      }
      return true;
    }).toList();

    Widget activePage = CategoriesScreen(onToggleFavorite: toggleMealFovireStatus,availableMeals: availableMeals,);
    var  activePageTitle = 'Kategoriler';


    if(selectedPageIndex == 1){
      activePage = Meals(meals: favoriteMeals, onToggleFavorite: toggleMealFovireStatus,);
      activePageTitle = 'Favorileriniz';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(onSelectScreen: setScreen,),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        currentIndex: selectedPageIndex,
        items: const [
           BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Kategoriler'),
           BottomNavigationBarItem(
              icon: Icon(Icons.star), label: 'Favoriler'),
        ],
      ),
    );
  }
}
