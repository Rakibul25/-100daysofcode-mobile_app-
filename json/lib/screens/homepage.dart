import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.black12
        ),
        child: NavigationBar(
          selectedIndex: 1,
          destinations: [
            NavigationDestination(icon: Icon(Icons.offline_bolt), label: 'offline'),
            NavigationDestination(icon: Icon(Icons.book_online), label: 'online')
          ],
        ),
      ),

    );
  }
}
