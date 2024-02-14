import 'package:bata/screens/home_screen/widgets/home_screen_container.dart';
import 'package:bata/screens/tover_screen/tover_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Screen",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 240, 23, 59),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 90,
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          children: [
            HomeScreenContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ToverScreen(),
                  ),
                );
              },
              lable: "Tover",
            ),
            const HomeScreenContainer(
              onTap: null,
              lable: "Retail",
            ),
            const HomeScreenContainer(
              onTap: null,
              lable: "E-Com",
            ),
            const HomeScreenContainer(
              onTap: null,
              lable: "Margin",
            ),
            const HomeScreenContainer(
              onTap: null,
              lable: "Asp",
            ),
            const HomeScreenContainer(
              onTap: null,
              lable: "Promotion",
            ),
            const HomeScreenContainer(
              onTap: null,
              lable: "Conversion",
            ),
            const HomeScreenContainer(
              onTap: null,
              lable: "Price Point",
            ),
            const HomeScreenContainer(
              onTap: null,
              lable: "Age",
            )
          ],
        ),
      ),
    );
  }
}
