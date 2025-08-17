/// Representa o resultado de uma ação na UI.
/// Inspirado no Command Pattern do Compass app.
class Command<T> {
  final T? data;
  final Object? error;

  const Command._(this.data, this.error);

  const Command.success(T data) : this._(data, null);
  const Command.error(Object error) : this._(null, error);
  const Command.empty() : this._(null, null);

  bool get isSuccess => data != null && error == null;
  bool get isError => error != null;
  bool get isEmpty => data == null && error == null;
}
