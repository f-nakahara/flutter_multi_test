import 'package:flutter_multi_test/data/datasource/i_counter_datasource.dart';
import 'package:flutter_multi_test/data/model/counter_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterDatasource implements ICounterDatasource {
  static CounterDatasource? _instance;
  static late final SharedPreferences _preferences;
  final String _key = 'counter';

  factory CounterDatasource() {
    if (_instance == null) {
      _instance = CounterDatasource._();
    }
    return _instance!;
  }

  CounterDatasource._();

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<CounterModel> find() async {
    final int count = _preferences.getInt(_key) ?? 0; // 初期値は0
    final counter = CounterModel(count: count); // 直接生成
    return counter;
  }

  @override
  Future<void> save({required int count}) async {
    await _preferences.setInt(_key, count);
  }
}
