import 'package:flutter_multi_test/domain/entity/counter.dart';

abstract class ICounterUseCase {
  // カウンターを取得する
  Future<Counter> getCounter();

  // カウンターを保存する
  Future<void> saveCounter({required int count});
}
