import 'package:flutter_multi_test/domain/usecase/counter_usecase_provider.dart';
import 'package:flutter_multi_test/domain/usecase/i_counter_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterViewModel = StateNotifierProvider<CounterViewModel, AsyncValue<int>>((ref) => CounterViewModel(useCase: ref.read(counterUseCaseProvider)));

class CounterViewModel extends StateNotifier<AsyncValue<int>> {
  CounterViewModel({required ICounterUseCase useCase})
      : _useCase = useCase,
        super(const AsyncLoading()) {
    _fetch();
  }

  final ICounterUseCase _useCase;

  // 同期
  Future<void> _fetch() async {
    final counter = await _useCase.getCounter();
    state = AsyncData(counter.count);
  }

  // 保存
  Future<void> increment() async {
    if (state is AsyncData) {
      final int count = state.data!.value + 1;
      await _useCase.saveCounter(count: count);
      _fetch();
    }
  }
}
