import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties;
  final String message;

  const Failure({
    this.properties = const <dynamic>[],
    this.message = 'An unknown failure occurred.',
  });

  @override
  List<Object?> get props => [properties, message];
}

class LocalDatasourceFailure extends Failure {
  const LocalDatasourceFailure({
    super.properties,
    super.message = 'A local datasource failure occurred.',
  });
}
