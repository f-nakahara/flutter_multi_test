import 'package:flutter_multi_test/domain/entity/counter.dart';

class CounterModel extends Counter {
  final int count; // カウント

  CounterModel({required this.count}) : super(count: count);

  // Jsonからモデル作成
  factory CounterModel.fromJson(Map<String, dynamic> json) {
    return CounterModel(
      count: json['count'],
    );
  }

  // モデルからJson作成
  Map<String, dynamic> toJson() {
    return {
      'count': count,
    };
  }
}
