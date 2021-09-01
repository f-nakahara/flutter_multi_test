import 'package:flutter_multi_test/domain/entity/counter.dart';
import 'package:flutter_multi_test/domain/repository/i_counter_repository.dart';
import 'package:flutter_multi_test/domain/usecase/i_counter_usecase.dart';

class CounterUseCase implements ICounterUseCase {
  CounterUseCase({required ICounterRepository repository}) : _repository = repository;
  final ICounterRepository _repository;

  @override
  Future<Counter> getCounter() async {
    final counter = await _repository.find();
    return counter;
  }

  @override
  Future<void> saveCounter({required int count}) async {
    await _repository.save(count: count);
  }
}
