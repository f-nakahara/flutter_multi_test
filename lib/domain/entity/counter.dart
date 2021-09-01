import 'package:equatable/equatable.dart';

class Counter extends Equatable {
  final int count; // カウント

  Counter({required this.count});

  @override
  List<Object?> get props => [count];
}
