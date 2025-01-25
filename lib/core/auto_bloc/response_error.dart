part of 'auto_bloc.dart';

class ResponseError<T> {
  const ResponseError({
    this.message,
    this.statusCode,
    this.data,
  });

  final String? message;
  final int? statusCode;
  final T? data;

  @override
  String toString() => message ?? '';
}
