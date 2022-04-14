import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension ContextX on BuildContext {
  void pushReplacement(Widget page) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  Result read<Result>(
    ProviderBase<Result> provider,
  ) =>
      ProviderScope.containerOf(this).read(provider);
}
