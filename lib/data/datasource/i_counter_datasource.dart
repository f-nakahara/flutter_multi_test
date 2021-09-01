import 'package:flutter_multi_test/data/model/counter_model.dart';

abstract class ICounterDatasource {
  // カウンターを取得する
  Future<CounterModel> find();

  // カウンターを保存する
  Future<void> save({required int count});
}
