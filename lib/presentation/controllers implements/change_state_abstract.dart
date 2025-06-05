//! classe que precisa implementar o observer
//! Lista de callbnack que serão notificados quando o estado mudar

import '../contracts abstracts/observable_abstract.dart';

class ChangeStateAbstract implements Observable {
  
  final List<void Function()> _callBacks = [];
  
  @override
  void addListener(void Function() callback) {
    if (!_callBacks.contains(callback)) _callBacks.add(callback);
  }
 
  @override
  void removeListener(void Function() callback) {
    if (!_callBacks.contains(callback)) _callBacks.remove(callback);
  }

  void notifyCallBack() {
    for (int i = 0; i < _callBacks.length; i++)
      _callBacks[i].call();
  }
}
