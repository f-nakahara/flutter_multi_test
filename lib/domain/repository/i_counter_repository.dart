import 'package:flutter_multi_test/domain/entity/counter.dart';

abstract class ICounterRepository {
  // カウンターを取得
  Future<Counter> find();

  // カウンターを保存
  Future<void> save({required int count});
}
