import 'package:flutter/material.dart';
import 'package:flutter_multi_test/presentation/viewmodel/counter_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final AsyncValue<int> count = watch(counterViewModel);
    return Scaffold(
      appBar: AppBar(
        title: Text('カウンター画面'),
      ),
      body: Center(
        child: count.when(
          data: (count) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$count',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            );
          },
          loading: () => CircularProgressIndicator(),
          error: (error, stack) => Text('エラー発生'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read(counterViewModel.notifier).increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    ;
  }
}
