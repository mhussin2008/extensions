import 'package:flutter/material.dart';
import 'extensions.dart';



class ExperimentOfContext extends StatelessWidget {
  const ExperimentOfContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experiment Of Context', style: context.titleTextStyle),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: context.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('displayMedium', style: context.displayMedium),
              Text('displaySmall', style: context.displaySmall),
              Text('headlineLarge', style: context.headlineLarge),
              Text('headlineMedium', style: context.headlineMedium),
              Text('titleLarge', style: context.titleLarge),
              Text('titleMedium', style: context.titleMedium),
              Text('titleSmall', style: context.titleSmall),
              Text('labelLarge', style: context.labelLarge),
              Text('bodySmall', style: context.bodySmall),
              Text('titleTextStyle', style: context.titleTextStyle),
              Text('bodyExtraSmall', style: context.bodyExtraSmall),
              Text('bodyLarge', style: context.bodyLarge),
              Text('dividerTextSmall', style: context.dividerTextSmall),
              Text('dividerTextLarge', style: context.dividerTextLarge),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () => context.showToast('Toast'),
                child: const Text('Toast'),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () => context.showSnackBar('SnackBar'),
                child: const Text('Show snack bar'),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () => context.showBottomSheet(const Padding(padding: EdgeInsets.all(16.0), child: Text('Bottom Sheet'))),
                child: const Text('Bottom Sheet'),
              ),
              const SizedBox(height: 8.0),
              Text('width: ${context.width}'),
              Text('height: ${context.height}'),
              const SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}