import '../contracts abstracts/observable_state_abstract.dart';
import 'change_state_abstract.dart';
// ! tipo genetico + implementa uma classe abstrata
class StateObservable<T> extends ChangeStateAbstract implements ObservableStateAbstract {

  T _state;

//! Pega o estado atual
  @override
  T get state => _state;
  
//! Define um novo estado e notifica os listeners
  set state(T newState) {
    if (newState == _state) return;
    _state = newState;
    notifyCallBack();
  }

  StateObservable(this._state);
}
