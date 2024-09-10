import 'package:cumax/ui/theme/colors.dart';
import 'package:cumax/ui/views/fav_page.dart';
import 'package:cumax/ui/views/movies_main_page.dart';
import 'package:cumax/ui/views/search_page.dart';
import 'package:cumax/ui/views/user_profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  //index zero
  int selectedIndex = 0;
  //add page the list
  var pages = [
    //home = movies main,search = new search,like class,person
    const MoviesMainPage(),
    const SearchPage(),
    const FavPage(),
    const UserProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: colorGrey,
          selectedItemColor: colorYellow,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: colorBlack,
                label: "Home",
                icon: const Icon(
                  Icons.home_filled,
                )),
            BottomNavigationBarItem(
                backgroundColor: colorBlack,
                label: "Search",
                icon: const Icon(
                  Icons.search_rounded,
                )),
            BottomNavigationBarItem(
                backgroundColor: colorBlack,
                label: "Favorites",
                icon: const Icon(
                  Icons.favorite,
                )),
            BottomNavigationBarItem(
                backgroundColor: colorBlack,
                label: "Profile",
                icon: const Icon(
                  Icons.person,
                )),
          ]),
    );
  }
}
