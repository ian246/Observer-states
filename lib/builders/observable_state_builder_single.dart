// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:gerencimento_estado_flutter/presentation/controllers%20implements/state_observable.dart';

class ObservableStateBuilderSingle<T> extends StatefulWidget {
  //! Guarda e ler os estados da aplicação
  //! get e set
  final StateObservable<T> stateObservable;
  final Widget? child;
  final Widget Function(BuildContext context, T state, Widget? child) builder;

  const ObservableStateBuilderSingle({
    super.key,
    required this.stateObservable,
    this.child,
    required this.builder,
  });

  @override
  State<ObservableStateBuilderSingle<T>> createState() =>
      _ObservableStateBuilderSingleState<T>();
}

class _ObservableStateBuilderSingleState<T>
    extends State<ObservableStateBuilderSingle<T>> {
  @override
  void initState() {
    widget.stateObservable.addListener(callback);
    super.initState();
  }

  void callback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.stateObservable.state, widget.child);
  }

  @override
  void dispose() {
    widget.stateObservable.removeListener(callback);
    super.dispose();
  }
}
