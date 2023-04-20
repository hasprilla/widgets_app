import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/counter_provider.dart';
import '../../providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch<int>(counterProvder);
    final theme = ref.watch<bool>(isDarkmodeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkmodeProvider.notifier).update((state) => !state);
            },
            icon: Icon(
              theme ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            ),
          )
        ],
      ),
      body: Center(
        child: Text('Valor: $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvder.notifier).state++;
          // ref.read(counterProvder.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
