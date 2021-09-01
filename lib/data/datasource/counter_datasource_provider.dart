import 'package:flutter_multi_test/data/datasource/counter_datasource.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterDatasourceProvider = Provider((ref) => CounterDatasource());
