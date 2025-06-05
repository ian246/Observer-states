import 'package:flutter/material.dart';

class ThemeController extends ValueNotifier<bool> {

ThemeController() : super(false); //! inicializa o ValueNotifier com o valor false (tema claro) 
    
  void toggleTheme() { //! método para alternar o tema
  value = !value; //! implemeta a lógica de alternância
  }
}
