// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class ObservableStateAbstract<T> {
  final T state;
  ObservableStateAbstract(this.state); //!construtor que recebe o estado inicial
}
//! ObservableState<T> 
//!     <T>     exigencia de um tipo generico 