import 'package:gerencimento_estado_flutter/presentation/controllers%20implements/change_state_abstract.dart';

//! Estado de contador
class CounterState extends ChangeStateAbstract {
  int counter = 0;
  void increment() {
    counter++;
    notifyCallBack(); // Notifica os listeners sobre a mudança de estado




  }
}
