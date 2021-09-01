import 'package:flutter_multi_test/data/datasource/i_counter_datasource.dart';
import 'package:flutter_multi_test/domain/entity/counter.dart';
import 'package:flutter_multi_test/domain/repository/i_counter_repository.dart';

class CounterRepository implements ICounterRepository {
  CounterRepository({required ICounterDatasource datasource}) : _datasource = datasource;

  final ICounterDatasource _datasource;

  @override
  Future<Counter> find() async {
    final counter = await _datasource.find();
    return counter;
  }

  @override
  Future<void> save({required int count}) async {
    await _datasource.save(count: count);
  }
}
