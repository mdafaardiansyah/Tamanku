import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MaterialYou(),
    );
  }
}

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

//Navigation Bar
class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key}) : super(key: key);

  @override
  State<MaterialYou> createState() => _MaterialYouState();
}

class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;
  List<Widget> pages = [
    //HomePage
    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Beranda"),
      ),
    ),

    //CollectionPage
    Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Koleksi")),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.amber,
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.25,
                  color: Colors.green,
                ),
                Container(
                  height: Get.height * 0.01,
                  color: Colors.grey,
                ),
                Expanded(
                    child: Container(
                  color: Colors.purple,
                ))
              ],
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(60), topLeft: Radius.circular(60)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 36,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.white.withOpacity(0),
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff156007),
                ),
              ),
            ),
            child: NavigationBar(
              backgroundColor: Colors.green.shade200,
              //animationDuration: const Duration(seconds: 0.5),
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              height: 70,
              selectedIndex: _currentIndex,
              onDestinationSelected: (int newIndex) {
                setState(() {
                  _currentIndex = newIndex;
                });
              },
              destinations: const [
                NavigationDestination(
                  selectedIcon: Icon(Icons.home, color: Color(0xff156007)),
                  icon: Icon(Icons.home_outlined, color: Colors.grey),
                  label: 'Beranda',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.save_as, color: Color(0xff156007)),
                  icon: Icon(Icons.save_as_outlined, color: Colors.grey),
                  label: 'Koleksi',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
