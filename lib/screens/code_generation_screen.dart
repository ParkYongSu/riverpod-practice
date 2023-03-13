import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/layout/default_layout.dart';
import 'package:riverpod_practice/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);
    final state4 = ref.watch(gStateMultiplyProvider(
      number1: 10,
      number2: 20,
    ));
    final state5 = ref.watch(gStateNotifierProvider);

    return DefaultLayout(
      title: "CodeGenerationScreen",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            state1,
          ),
          state2.when(
            data: (data) => Text(data.toString()),
            error: (err, stackTrace) => Text(err.toString()),
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
          ),
          state3.when(
            data: (data) => Text(data.toString()),
            error: (err, stackTrace) => Text(err.toString()),
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
          ),
          Text(
            state4.toString(),
          ),
          Text(
            state5.toString(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(gStateNotifierProvider.notifier).increment();
                },
                child: Text("increment"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(gStateNotifierProvider.notifier).decrement();
                },
                child: Text("decrement"),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              ref.invalidate(gStateNotifierProvider);
            },
            child: Text("invalidate"),
          )
        ],
      ),
    );
  }
}
