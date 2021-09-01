import 'package:flutter_multi_test/data/repository/counter_repository_provider.dart';
import 'package:flutter_multi_test/domain/usecase/counter_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterUseCaseProvider = Provider((ref) => CounterUseCase(repository: ref.read(counterRepositoryProvider)));
