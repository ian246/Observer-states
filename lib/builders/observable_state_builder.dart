//! Statful para controlar o lifecycle do widget

import 'package:flutter/material.dart';
import 'package:gerencimento_estado_flutter/presentation/contracts%20abstracts/observable_abstract.dart';

class ObservableStateBuilder extends StatefulWidget {
  final Observable observable; //!adicionar e remover listeners
  final Widget? child;
  final Widget Function(BuildContext context, Widget? child)
  builder; //! Exibe informações na tela

  const ObservableStateBuilder({
    super.key,
    required this.observable,
    required this.builder,
    this.child,
  });

  @override
  State<ObservableStateBuilder> createState() => _ObservableStateBuilder();
}

class _ObservableStateBuilder extends State<ObservableStateBuilder> {
  @override
  void initState() {
    widget.observable.addListener(rebuild);
    super.initState();
  }

  void rebuild() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.child);
  }

  @override
  dispose() {
    widget.observable.removeListener(rebuild);
    super.dispose();
  }
}
