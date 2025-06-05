import 'package:flutter/material.dart';
import 'package:gerencimento_estado_flutter/builders/observable_state_builder.dart';
import 'package:gerencimento_estado_flutter/builders/observable_state_builder_single.dart';
import 'package:gerencimento_estado_flutter/widgets/theme_controller.dart';
import 'package:gerencimento_estado_flutter/presentation/models/counter_state.dart';
import 'presentation/controllers implements/state_observable.dart';

void main() {
  runApp(const MyApp());
}

final themeController = ThemeController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable:
          themeController, //! O ValueListenableBuilder escuta as mudanças no ThemeController
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: value
              //! Cria apenas uma logica de programação
              //! de forma bem mais simpels,
              //! nao preciso ficar criando variaveis e inicializando o seu valor
              //! primario, como: "isDarkMode = false;"
              ? ThemeData.dark()
              : ThemeData.light(),
          home: MyLittleHomePage(),
        );
      },
    );
  }
}

class MyLittleHomePage extends StatefulWidget {
  const MyLittleHomePage({super.key});

  @override
  State<MyLittleHomePage> createState() => _MyLittleHomePageState();
}

class _MyLittleHomePageState extends State<MyLittleHomePage> {
  final counterState = CounterState();
  final observableCounter = StateObservable(0);

  @override
  void initState() {
    observableCounter.addListener(callback);
    super.initState();
  } 

  void callback() {
    setState(() {
      print("Valor do conta dor: ${counterState.counter}");
    });
  }

  @override
  Widget build(BuildContext context) {
    //! instancia do estado do contador
    //! que é um ChangeState, que implementa o Observable
    //! e notifica os listeners quando o estado muda
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ObservableStateBuilder(
              observable: counterState,
              child: const Text("Child Widget"),
              builder: (context, child) {
                return Column(
                  children: [
                    //! Para Todos os Widgets
                    ObservableStateBuilder(
                      observable: observableCounter,
                      builder: (context, child) {
                        return Text(
                          "Contador: ${counterState.counter}",
                          style: const TextStyle(fontSize: 30),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
            //! Para um unico widget
            Column(
              children: [
                ObservableStateBuilderSingle(
                  stateObservable: observableCounter,
                  builder: (context, state, child) {
                    return Text(
                      "Contador Observable: $state",
                      style: const TextStyle(fontSize: 30),
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    observableCounter.state++;
                  },
                  child: Text("Botão"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    observableCounter.addListener(callback);
    super.dispose();
  }
}
