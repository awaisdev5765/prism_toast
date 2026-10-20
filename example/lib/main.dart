import 'package:flutter/material.dart';
import 'package:prism_toast/prism_toast.dart';

/// Demo app for prism_toast.
void main() => runApp(const DemoApp());

/// Root widget showing toast variants.
class DemoApp extends StatelessWidget {
  /// Creates the demo.
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('prism_toast demo')),
        body: Center(
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.check),
                label: const Text('Success'),
                onPressed: () => PrismToast.success(context, 'Settings saved.'),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.error_outline),
                label: const Text('Error'),
                onPressed: () =>
                    PrismToast.error(context, 'Upload failed. Retry?'),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.warning_amber_outlined),
                label: const Text('Warning'),
                onPressed: () =>
                    PrismToast.warning(context, 'Storage almost full.'),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.info_outline),
                label: const Text('Action toast'),
                onPressed: () => PrismToast.show(
                  context,
                  const PrismToastMessage(
                    title: 'Sync complete',
                    message: '142 items updated.',
                    type: PrismToastType.success,
                    actionLabel: 'View',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
