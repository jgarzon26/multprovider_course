import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/minute.dart';
import '../widgets/second.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: MultiProvider(
        providers: [
          StreamProvider.value(
            value: Stream<Seconds>.periodic(
              const Duration(seconds: 1),
              (_) => Seconds(),
            ),
            initialData: Seconds(),
          ),
          StreamProvider.value(
            value: Stream<Minutes>.periodic(
              const Duration(minutes: 1),
              (_) => Minutes(),
            ),
            initialData: Minutes(),
          ),
        ],
        child: Row(
          children: const [
            Second(),
            Minute(),
          ],
        ),
      ),
    );
  }
}

String now() => DateTime.now().toIso8601String();

@immutable
class Seconds {
  final String value;
  Seconds() : value = now();
}

@immutable
class Minutes {
  final String value;
  Minutes() : value = now();
}
