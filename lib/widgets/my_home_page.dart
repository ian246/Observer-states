import 'package:flutter/material.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //! variavel para fazer a alteração
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Trocar tema do meu aplicativo"),
            //! o value vai pegar o valor da variavel isDarkMode
            ValueListenableBuilder(
              valueListenable: themeController,
              builder: (context, value, child) {
                return FloatingActionButton(
                  onPressed: themeController.toggleTheme,
                  child: Icon(value ? Icons.dark_mode : Icons.light),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
