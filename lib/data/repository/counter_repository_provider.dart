import 'package:flutter_multi_test/data/datasource/counter_datasource_provider.dart';
import 'package:flutter_multi_test/data/repository/counter_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterRepositoryProvider = Provider((ref) => CounterRepository(datasource: ref.read(counterDatasourceProvider)));
